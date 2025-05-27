!Responsibilities
I am an abstract memento. I am a stand-in for an object, typically for reading and writing. Subclasses ''may'' save the pre-operation state (e.g. ${class:MACachedMemento}$), or ''may not'' (e.g. ${class:MAStraightMemento}$. Similarly, they ''may'' verify described conditions are met (e.g. ${class:MACheckedMemento}$). NB. My behavior is different than a GoF ==Memento==, which is immutable, saving an object's state before it's modified by an operation.
!Collaborators
- the ==model== I represent/modify
- the ==description== currently used to describe this ==model==