
#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура СделатьХорошо(Команда)
	
   	ОписаниеЗавершения = Новый ОписаниеОповещения("ПослеОтветаНаВопрос", ЭтотОбъект);	
	ТекстВопроса = НСтр("ru = 'Сделать хорошо?!'");	
	ПоказатьВопрос(ОписаниеЗавершения, ТекстВопроса, РежимДиалогаВопрос.ДаНет);
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Процедура ПослеОтветаНаВопрос(РезультатВопроса, ДополнительныеПараметры) Экспорт

	Если РезультатВопроса = КодВозвратаДиалога.Да Тогда
		ТекстОтвета = НСтр("ru = 'Вот теперь хорошо!'");
	Иначе
		ТекстОтвета = НСтр("ru = 'Вам же хуже!'");	
	КонецЕсли;	
	
	ПоказатьПредупреждение(, ТекстОтвета);
	
КонецПроцедуры

#КонецОбласти
