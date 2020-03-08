let oldMessages
const sender = 2
const reciever = 1
const chatBox = document.getElementsByClassName('chat-body')[0]
btnChat = document.getElementById('btnChat')
inpChat = document.getElementById('inpChat')

getMessages()
const INTERVAL_IN_MILI_SECS = 2000
setInterval(getMessages, INTERVAL_IN_MILI_SECS)

window.addEventListener('load', function() {
	chatBox.scrollIntoView(false)
})

function getMessages() {
	const xhr = new XMLHttpRequest()
	const url = 'data.php'
	const params = 'gender=male'
	// xhr.open('GET', `${url}?${params}`, true)

	xhr.open('GET', `php/chat.php`, true)
	xhr.onreadystatechange = function() {
		if(this.readyState == 4 && this.status == 200) {
			let data = JSON.parse(this.responseText)
			renderMessages(data)
			oldMessages = data
		}
	}

	xhr.send()
}
function renderMessages(messages) {
	function isSender(senderID) {
		if(sender == senderID) {
			return true
		} else {
			return false
		}
	}

	let newMessages = getOnlyNewMessages(oldMessages, messages)

	if(newMessages) {
		newMessages.forEach((message) => {
			let chatContainer = document.createElement('div')
			if(isSender(message['sender_id'])) {
				chatContainer.innerHTML = tempSender
			} else {
				chatContainer.innerHTML = tempReciever
			}
			chatBox.appendChild(chatContainer)
		})
	}
}

function getOnlyNewMessages(oldMessages, newMessages) {
	let getNewMessages = []
	if(oldMessages) {
		newMessages.forEach((message, index) => {
			if(oldMessages[index] == undefined ) {
				getNewMessages.push(message)
			}
		})
		return getNewMessages
	} else {
		oldMessages = Object.assign({}, newMessages)
		return newMessages
	}

}

let tempSender = `
<div class="row chat-row justify-content-end chat-sender">
	<div class="col-md-6">
		<img class="chat-person-img fl-right" src="img/shengyi.jpg" alt="profile_pic">
		<div class="chat-box fl-right">
			<p>Praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident?</p>
		</div>
		<div class="chat-time reciever fl-right">
			<p>3/8/2020 1:45 PM</p>
		</div>
	</div>
</div>
`

let tempReciever = `
<div class="row chat-row chat-reciever">
	<div class="col-md-6">
		<img class="chat-person-img fl-left" src="img/person.jpg" alt="profile_pic">
		<div class="chat-box reciever fl-left">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
		</div>
		<div class="chat-time reciever fl-left">
			<p>3/8/2020 1:45 PM</p>
		</div>
	</div>
</div>
`

function insertToDatabase({sender, reciever, message}) {
	console.log(sender)
	console.log(reciever)
	console.log(message)
	$.ajax({
		url: 'php/insertMessage.php',
		type: 'POST',
		cache: false,
		data: {
			sender: sender,
			reciever: reciever,			
			message: message,
		},
		success: function(dataResult){
			var dataResult = JSON.parse(dataResult)
			if(dataResult.statusCode==200) {
	
			}
			else if(dataResult.statusCode==201) {

			}			
		}
	})
}

btnChat.addEventListener('click', function() {
	message = inpChat.value
	insertToDatabase({sender, reciever, message})
})