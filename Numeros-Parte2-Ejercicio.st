!classDefinition: #RealNumberTests category: 'Numeros-Parte2-Ejercicio'!
TestCase subclass: #RealNumberTests
	instanceVariableNames: 'zero one two four oneFifth oneHalf five twoFifth twoTwentyfifth fiveHalfs three eight negativeOne negativeTwo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!RealNumberTests methodsFor: 'tests' stamp: 'LL 9/13/2020 16:17:50'!
test01isZeroReturnsTrueWhenAskToZero

	self assert: zero isZero! !

!RealNumberTests methodsFor: 'tests' stamp: 'LL 9/13/2020 16:17:58'!
test02isZeroReturnsFalseWhenAskToOthersButZero

	self deny: one isZero! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test03isOneReturnsTrueWhenAskToOne

	self assert: one isOne! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test04isOneReturnsFalseWhenAskToOtherThanOne

	self deny: zero isOne! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:14'!
test05EnteroAddsWithEnteroCorrectly

	self assert: one + one equals: two! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:18'!
test06EnteroMultipliesWithEnteroCorrectly

	self assert: two * two equals: four! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:20'!
test07EnteroDividesEnteroCorrectly

	self assert: two / two equals: one! !

!RealNumberTests methodsFor: 'tests' stamp: 'fran 5/31/2021 09:36:14'!
test08FraccionAddsWithFraccionCorrectly
"
    La suma de fracciones es:
	 
	a/b + c/d = (a.d + c.b) / (b.d)
	 
	SI ESTAN PENSANDO EN LA REDUCCION DE FRACCIONES NO SE PREOCUPEN!!
	TODAVIA NO SE ESTA TESTEANDO ESE CASO
"
	| sevenTenths |

	sevenTenths := (IntegerNumber with: 7) / (IntegerNumber with: 10).

	self assert: oneFifth + oneHalf equals: sevenTenths! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:52'!
test09FraccionMultipliesWithFraccionCorrectly
"
    La multiplicacion de fracciones es:
	 
	(a/b) * (c/d) = (a.c) / (b.d)
"

	self assert: oneFifth * twoFifth equals: twoTwentyfifth! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:56'!
test10FraccionDividesFraccionCorrectly
"
    La division de fracciones es:
	 
	(a/b) / (c/d) = (a.d) / (b.c)
"

	self assert: oneHalf / oneFifth equals: fiveHalfs! !

!RealNumberTests methodsFor: 'tests' stamp: 'fran 5/31/2021 09:36:14'!
test11EnteroAddsFraccionCorrectly
"
	Ahora empieza la diversion!!
"

	self assert: one + oneFifth equals: (IntegerNumber with: 6) / (IntegerNumber with: 5)! !

!RealNumberTests methodsFor: 'tests' stamp: 'fran 5/31/2021 09:36:14'!
test12FraccionAddsEnteroCorrectly

	self assert: oneFifth + one equals: (IntegerNumber with: 6) / (IntegerNumber with: 5)! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:50'!
test13EnteroMultipliesFraccionCorrectly

	self assert: two * oneFifth equals: twoFifth ! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:52'!
test14FraccionMultipliesEnteroCorrectly

	self assert: oneFifth * two equals: twoFifth ! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:57'!
test15EnteroDividesFraccionCorrectly

	self assert: one / twoFifth equals: fiveHalfs  ! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:59'!
test16FraccionDividesEnteroCorrectly

	self assert: twoFifth / five equals: twoTwentyfifth ! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:38'!
test17AFraccionCanBeEqualToAnEntero

	self assert: two equals: four / two! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:39'!
test18AparentFraccionesAreEqual

	self assert: oneHalf equals: two / four! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:40'!
test19AddingFraccionesCanReturnAnEntero

	self assert: oneHalf + oneHalf equals: one! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:42'!
test20MultiplyingFraccionesCanReturnAnEntero

	self assert: (two/five) * (five/two) equals: one! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:42'!
test21DividingFraccionesCanReturnAnEntero

	self assert: oneHalf / oneHalf equals: one! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:43'!
test22DividingEnterosCanReturnAFraccion

	self assert: two / four equals: oneHalf! !

!RealNumberTests methodsFor: 'tests' stamp: 'fran 5/31/2021 09:35:13'!
test23CanNotDivideEnteroByZero

	self 
		should: [ one / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: RealNumber canNotDivideByZeroErrorDescription ]
	! !

!RealNumberTests methodsFor: 'tests' stamp: 'fran 5/31/2021 09:35:13'!
test24CanNotDivideFraccionByZero

	self 
		should: [ oneHalf / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: RealNumber canNotDivideByZeroErrorDescription ]
	! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test25AFraccionCanNotBeZero

	self deny: oneHalf isZero! !

!RealNumberTests methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test26AFraccionCanNotBeOne

	self deny: oneHalf isOne! !

!RealNumberTests methodsFor: 'tests' stamp: 'NR 5/7/2020 17:46:14'!
test27EnteroSubstractsEnteroCorrectly

	self assert: three - one equals: two! !

!RealNumberTests methodsFor: 'tests' stamp: 'NR 9/23/2018 23:47:41'!
test28FraccionSubstractsFraccionCorrectly
	
	self assert: twoFifth - oneFifth equals: oneFifth.! !

!RealNumberTests methodsFor: 'tests' stamp: 'NR 9/23/2018 23:48:00'!
test29EnteroSubstractsFraccionCorrectly

	self assert: one - oneHalf equals: oneHalf! !

!RealNumberTests methodsFor: 'tests' stamp: 'fran 5/31/2021 09:36:14'!
test30FraccionSubstractsEnteroCorrectly

	| sixFifth |
	
	sixFifth := (IntegerNumber with: 6) / (IntegerNumber with: 5).
	
	self assert: sixFifth - one equals: oneFifth! !

!RealNumberTests methodsFor: 'tests' stamp: 'fran 5/31/2021 09:36:14'!
test31SubstractingFraccionesCanReturnAnEntero

	| threeHalfs |
	
	threeHalfs := (IntegerNumber with: 3) / (IntegerNumber with: 2).
	
	self assert: threeHalfs - oneHalf equals: one.! !

!RealNumberTests methodsFor: 'tests' stamp: 'NR 9/23/2018 23:48:48'!
test32SubstractingSameEnterosReturnsZero

	self assert: one - one equals: zero.! !

!RealNumberTests methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:01'!
test33SubstractingSameFraccionesReturnsZero

	self assert: oneHalf - oneHalf equals: zero.! !

!RealNumberTests methodsFor: 'tests' stamp: 'fran 5/31/2021 09:36:14'!
test34SubstractingAHigherValueToANumberReturnsANegativeNumber

	| negativeThreeHalfs |
	
	negativeThreeHalfs := (IntegerNumber with: -3) / (IntegerNumber with: 2).	

	self assert: one - fiveHalfs equals: negativeThreeHalfs.! !

!RealNumberTests methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:23'!
test35FibonacciZeroIsOne

	self assert: zero fibonacci equals: one! !

!RealNumberTests methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:32'!
test36FibonacciOneIsOne

	self assert: one fibonacci equals: one! !

!RealNumberTests methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:39'!
test37FibonacciEnteroReturnsAddingPreviousTwoFibonacciEnteros

	self assert: four fibonacci equals: five.
	self assert: three fibonacci equals: three. 
	self assert: five fibonacci equals: four fibonacci + three fibonacci.! !

!RealNumberTests methodsFor: 'tests' stamp: 'fran 5/31/2021 09:36:14'!
test38FibonacciNotDefinedForNegativeNumbers

	self 
		should: [negativeOne fibonacci]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: IntegerNumber negativeFibonacciErrorDescription ].! !

!RealNumberTests methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:55'!
test39NegationOfEnteroIsCorrect

	self assert: two negated equals: negativeTwo.
		! !

!RealNumberTests methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:03'!
test40NegationOfFraccionIsCorrect

	self assert: oneHalf negated equals: negativeOne / two.! !

!RealNumberTests methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:11'!
test41SignIsCorrectlyAssignedToFractionWithTwoNegatives

	self assert: oneHalf equals: (negativeOne / negativeTwo)! !

!RealNumberTests methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:17'!
test42SignIsCorrectlyAssignedToFractionWithNegativeDivisor

	self assert: oneHalf negated equals: (one / negativeTwo)! !


!RealNumberTests methodsFor: 'setup' stamp: 'fran 5/31/2021 09:36:14'!
setUp

	zero := IntegerNumber with: 0.
	one := IntegerNumber with: 1.
	two := IntegerNumber with: 2.
	three:= IntegerNumber with: 3.
	four := IntegerNumber with: 4.
	five := IntegerNumber with: 5.
	eight := IntegerNumber with: 8.
	negativeOne := IntegerNumber with: -1.
	negativeTwo := IntegerNumber with: -2.
	
	oneHalf := one / two.
	oneFifth := one / five.
	twoFifth := two / five.
	twoTwentyfifth := two / (IntegerNumber with: 25).
	fiveHalfs := five / two.
	! !


!classDefinition: #RealNumber category: 'Numeros-Parte2-Ejercicio'!
Object subclass: #RealNumber
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!RealNumber methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:48'!
* aMultiplier

	self subclassResponsibility ! !

!RealNumber methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:49'!
+ anAdder

	self subclassResponsibility ! !

!RealNumber methodsFor: 'arithmetic operations' stamp: 'NR 9/23/2018 22:21:28'!
- aSubtrahend

	self subclassResponsibility ! !

!RealNumber methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:49'!
/ aDivisor

	self subclassResponsibility ! !

!RealNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 09:36:14'!
negated
	
	^self * (IntegerNumber with: -1)! !


!RealNumber methodsFor: 'testing' stamp: 'NR 9/23/2018 23:36:49'!
isNegative

	self subclassResponsibility ! !

!RealNumber methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isOne

	self subclassResponsibility ! !

!RealNumber methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isZero

	self subclassResponsibility ! !


!RealNumber methodsFor: 'private' stamp: 'HernanWilkinson 5/7/2016 22:48'!
invalidNumberType

	self error: self class invalidNumberTypeErrorDescription! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'RealNumber class' category: 'Numeros-Parte2-Ejercicio'!
RealNumber class
	instanceVariableNames: ''!

!RealNumber class methodsFor: 'error descriptions' stamp: 'NR 5/7/2020 17:47:38'!
canNotDivideByZeroErrorDescription

	^'No se puede Dividir por Cero'! !

!RealNumber class methodsFor: 'error descriptions' stamp: 'NR 5/7/2020 17:46:56'!
invalidNumberTypeErrorDescription
	^ 'Tipo de Número Inválido'! !


!classDefinition: #FractionNumber category: 'Numeros-Parte2-Ejercicio'!
RealNumber subclass: #FractionNumber
	instanceVariableNames: 'numerator denominator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!FractionNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:36:42'!
* aMultiplier 
	^aMultiplier beMultipliedToAFraction: self.
	! !

!FractionNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:36:17'!
+ anAdder 
	^anAdder beAddedToAFraction: self.! !

!FractionNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:37:08'!
- aSubtrahend 
	^aSubtrahend beSubstractedToAFraction: self.
! !

!FractionNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:35:12'!
/ aDivisor
	^aDivisor DivideAFraction: self.! !

!FractionNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:55:57'!
DivideAFraction: aDividend
	^(denominator * aDividend numerator) / (numerator * aDividend denominator).! !

!FractionNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:56:46'!
DivideAnInteger: aDividend
	|newNumerator|
	newNumerator := aDividend  * denominator .
	^newNumerator / numerator .! !

!FractionNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:48:42'!
beAddedToAFraction: anAdder
	|newNumerator newDenominator|
	newNumerator := (numerator * anAdder denominator) + (denominator * anAdder numerator).
	newDenominator := denominator * anAdder denominator.
	
	^newNumerator / newDenominator ! !

!FractionNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:57:52'!
beAddedToAnInteger: anAdder
	|_denominator newNumerator|
	_denominator := self denominator .
	newNumerator := (_denominator * anAdder) + self numerator .
	^newNumerator / _denominator .! !

!FractionNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:48:42'!
beMultipliedToAFraction: aMultiplier
	^(numerator * aMultiplier numerator) / (denominator * aMultiplier denominator)
! !

!FractionNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:36:56'!
beMultipliedToAnInteger: aMultiplier
	|newNumerator|
	newNumerator := (aMultiplier * self numerator) .
	^newNumerator / denominator.		! !

!FractionNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:48:42'!
beSubstractedToAFraction: aSubtrahend
	| newNumerator newDenominator |
	newNumerator :=  (denominator * aSubtrahend numerator) - (numerator * aSubtrahend denominator).
	newDenominator := denominator * aSubtrahend denominator.
	
	^newNumerator / newDenominator ! !

!FractionNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:58:46'!
beSubtractedToAnInteger: aSubtrahend
	|_denominator newNumerator|
	_denominator := self denominator .
	newNumerator := (aSubtrahend * _denominator )- self numerator .
	^newNumerator / _denominator .
! !


!FractionNumber methodsFor: 'comparing' stamp: 'fran 5/31/2021 14:48:42'!
= anObject

	^(anObject isKindOf: self class) and: [ (numerator * anObject denominator) = (denominator * anObject numerator) ]! !

!FractionNumber methodsFor: 'comparing' stamp: 'fran 5/31/2021 14:48:42'!
hash

	^(numerator hash / denominator hash) hash! !


!FractionNumber methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:56'!
denominator

	^ denominator! !

!FractionNumber methodsFor: 'accessing' stamp: 'fran 5/31/2021 14:48:42'!
numerator

	^ numerator! !


!FractionNumber methodsFor: 'initialization' stamp: 'fran 5/31/2021 14:48:42'!
initializeWith: aNumerator over: aDenominator

	"Estas precondiciones estan por si se comenten errores en la implementacion - Hernan"
	aNumerator isZero ifTrue: [ self error: 'una fraccion no puede ser cero' ].
	aDenominator isOne ifTrue: [ self error: 'una fraccion no puede tener denominador 1 porque sino es un entero' ].
	
	numerator := aNumerator.
	denominator := aDenominator ! !


!FractionNumber methodsFor: 'testing' stamp: 'fran 5/31/2021 14:48:42'!
isNegative
	
	^numerator < 0! !

!FractionNumber methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isOne
	
	^false! !

!FractionNumber methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isZero
	
	^false! !


!FractionNumber methodsFor: 'printing' stamp: 'fran 5/31/2021 14:48:42'!
printOn: aStream

	aStream 
		print: numerator;
		nextPut: $/;
		print: denominator ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'FractionNumber class' category: 'Numeros-Parte2-Ejercicio'!
FractionNumber class
	instanceVariableNames: ''!

!FractionNumber class methodsFor: 'intance creation' stamp: 'fj 5/30/2021 23:54:52'!
with: aDividend over: aDivisor

	| greatestCommonDivisor numerator denominator |
	
	greatestCommonDivisor := aDividend greatestCommonDivisorWith: aDivisor. 
	numerator := aDividend // greatestCommonDivisor.
	denominator := aDivisor // greatestCommonDivisor.
	
	denominator isOne ifTrue: [ ^numerator ].

	^self new initializeWith: numerator over: denominator
	! !


!classDefinition: #IntegerNumber category: 'Numeros-Parte2-Ejercicio'!
RealNumber subclass: #IntegerNumber
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:36:56'!
* aMultiplier 
	^aMultiplier beMultipliedToAnInteger: self.
	! !

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:36:29'!
+ anAdder 
	^anAdder beAddedToAnInteger: self.
! !

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:37:20'!
- aSubtrahend 
	^aSubtrahend beSubtractedToAnInteger: self.! !

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:35:39'!
/ aDivisor
	^aDivisor DivideAnInteger: self .! !

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:59:29'!
DivideAFraction: aDividend
	|newDenominator|
	newDenominator := (aDividend denominator * self).
	^aDividend numerator / newDenominator.		! !

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:59:35'!
DivideAnInteger: aDividend
	self subclassResponsibility .! !

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:36:17'!
beAddedToAFraction: anAdder
	| newNumerator newDenominator |
	newNumerator := (anAdder denominator * self) + anAdder numerator.
	^newNumerator /  anAdder denominator.! !

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:36:29'!
beAddedToAnInteger: anAdder
	^self class with: anAdder integerValue + value.! !

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:36:42'!
beMultipliedToAFraction: aMultiplier
	|newNumerator|
	newNumerator := (aMultiplier numerator * self) .
	^newNumerator / aMultiplier denominator.		! !

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:36:56'!
beMultipliedToAnInteger: aMultiplier
	^self class with: aMultiplier integerValue * value.! !

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:37:08'!
beSubstractedToAFraction: aSubtrahend
	| newNumerator newDenominator |
	newNumerator := aSubtrahend numerator -(aSubtrahend denominator * self).
	^newNumerator / aSubtrahend denominator.		! !

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 14:37:20'!
beSubtractedToAnInteger: aSubtrahend
	^self class with: aSubtrahend integerValue - value! !

!IntegerNumber methodsFor: 'arithmetic operations' stamp: 'fj 5/30/2021 23:20:58'!
fibonacci
	self subclassResponsibility .
		! !


!IntegerNumber methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 21:01'!
= anObject

	^(anObject isKindOf: self class) and: [ value = anObject integerValue ]! !

!IntegerNumber methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:17'!
hash

	^value hash! !


!IntegerNumber methodsFor: 'initialization' stamp: 'HernanWilkinson 5/7/2016 20:09'!
initalizeWith: aValue 
	
	value := aValue! !


!IntegerNumber methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:02'!
integerValue

	"Usamos integerValue en vez de value para que no haya problemas con el mensaje value implementado en Object - Hernan"
	
	^value! !


!IntegerNumber methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:53:19'!
printOn: aStream

	aStream print: value ! !


!IntegerNumber methodsFor: 'testing' stamp: 'NR 9/23/2018 22:17:55'!
isNegative
	
	^value < 0! !

!IntegerNumber methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 20:14'!
isOne
	
	^value = 1! !

!IntegerNumber methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 20:12'!
isZero
	
	^value = 0! !


!IntegerNumber methodsFor: 'arithmetic operations - private' stamp: 'HernanWilkinson 5/7/2016 21:55'!
// aDivisor 
	
	^self class with: value // aDivisor integerValue! !

!IntegerNumber methodsFor: 'arithmetic operations - private' stamp: 'HernanWilkinson 5/7/2016 21:00'!
greatestCommonDivisorWith: anEntero 
	
	^self class with: (value gcd: anEntero integerValue)! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IntegerNumber class' category: 'Numeros-Parte2-Ejercicio'!
IntegerNumber class
	instanceVariableNames: ''!

!IntegerNumber class methodsFor: 'instance creation' stamp: 'NR 4/8/2019 02:57:57'!
negativeFibonacciErrorDescription
	^ ' Fibonacci no está definido aquí para Enteros Negativos'! !

!IntegerNumber class methodsFor: 'instance creation' stamp: 'fran 5/31/2021 13:54:25'!
with: aValue 
	
	"Esta verificacion esta puesta por si se equivocan y quieren crear un Entero pasando otra cosa que un Integer - Hernan"
	aValue isInteger ifFalse: [  self error: 'aValue debe ser anInteger' ].
	(aValue < 0) ifTrue: [^NegativeInteger new initalizeWith: aValue].
	(aValue = 0)ifTrue: [^IntegerZero new initalizeWith: aValue].
	(aValue = 1)ifTrue: [^IntegerOne new initalizeWith: aValue].
	^IntegerNumberGreaterThanOne new initalizeWith: aValue! !


!classDefinition: #IntegerNumberGreaterThanOne category: 'Numeros-Parte2-Ejercicio'!
IntegerNumber subclass: #IntegerNumberGreaterThanOne
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!IntegerNumberGreaterThanOne methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 15:00:05'!
DivideAnInteger: aDividend
	^FractionNumber with: aDividend over: self.! !

!IntegerNumberGreaterThanOne methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 09:36:14'!
fibonacci
	| one two |
	
	one := IntegerNumber with: 1.
	two := IntegerNumber with: 2.
	
	^ (self - one) fibonacci + (self - two) fibonacci.! !


!classDefinition: #IntegerOne category: 'Numeros-Parte2-Ejercicio'!
IntegerNumber subclass: #IntegerOne
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!IntegerOne methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 15:00:21'!
DivideAnInteger: aDividend
	^aDividend.! !

!IntegerOne methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 09:36:14'!
fibonacci
	^IntegerNumber with: 1.! !


!classDefinition: #IntegerZero category: 'Numeros-Parte2-Ejercicio'!
IntegerNumber subclass: #IntegerZero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!IntegerZero methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 15:00:26'!
DivideAnInteger: aDividend
	^self error: FractionNumber canNotDivideByZeroErrorDescription .! !

!IntegerZero methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 09:36:14'!
fibonacci
	^IntegerNumber with: 1.! !


!classDefinition: #NegativeInteger category: 'Numeros-Parte2-Ejercicio'!
IntegerNumber subclass: #NegativeInteger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!NegativeInteger methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 15:00:33'!
DivideAnInteger: aDividend
	^aDividend negated / self negated.! !

!NegativeInteger methodsFor: 'arithmetic operations' stamp: 'fran 5/31/2021 09:36:14'!
fibonacci
	^self error: IntegerNumber negativeFibonacciErrorDescription .! !
