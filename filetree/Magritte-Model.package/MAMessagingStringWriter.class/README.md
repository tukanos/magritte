I enable delegating string writing to an arbitrary object via any of its messages. 

*Limitation:* I cannot be used when 1) the message receiver is the container and 2) descriptions are cached e.g. when using the description for the first object in a homogeneous collection for the whole collection.

Here is an example (which illustrates #1 in the limitation above and so wouldn't work with a cached description):

```
MyDomainClass>>employeeDescription
	<magritteDescription>
	
	| message writer reference |
	message := MessageSend 
		receiver: self
		selector: #employeeDisplayString.
	
	writer := MAMessagingStringWriter new
		messageSend: message.
	
	reference := MAContainer new 
		stringWriter: writer;
		yourself.

	^ MAToOneRelationDescription new
		reference: reference;
		accessor: #employee;
		yourself
```