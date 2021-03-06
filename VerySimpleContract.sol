// Указываем версию солидити для компилятора
pragma solidity ^0.4.11;



//Объявляем контракт

contract firstContract {


	// Объявляем переменную donator, в которой будет содержаться значение типа Адрес
	// Public означает, что значение этой переменной будет видно всем

	address public donator;




	// Функция для приема эфиров
	// Отсутвие названия говорит о том, что эта функция будет вызвана в момент,
	// когда на адрес контракта переводятся деньги

	// payable - модификатор который означает, что вместе с вызовом функции могут передаваться эфиры
	function () payable {

		// Присваиваем функции donator значение адреса того, кто отправил эфиры

		donator = msg.sender;
	}
}
