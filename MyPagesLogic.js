var Observable = require('FuseJS/Observable');

var myVariable = Observable("some value");
var name = Observable("");
var age = Observable("");

var lowercase = myVariable.map(function(x){
	return x.toLowerCase();
});

var uppercase = myVariable.map(function(x){
	return x.toUpperCase();
});


var isThomas = myVariable.map(function(x){
	return x=="Thomas";
});

function button_clicked(){
	myVariable.value = "some other value";
	debug_log(myVariable);
}

function Person(name, age){
	this.name = name;
	this.age = age;
}

var myPerson = Observable(
	new Person("Thomas", 25),
	new Person("Cassandre", 25)
);

var listUppercase = myPerson
.map(function(x){
	return new Person(x.name.toUpperCase(), x.age);
})
.where(function(x){
	return x.age > 30;
});

function submit(){
	var newPerson = new Person(name.value, age.value);
	myPerson.add(newPerson);
	name.value="";
	age.value="";
}

module.exports = {
	myVariable : myVariable,
	button_clicked: button_clicked,
	uppercase : uppercase,
	lowercase : lowercase,
	isThomas: isThomas,
	myPerson : myPerson,
	name : name,
	age: age,
	submit : submit,
	listUppercase : listUppercase
}