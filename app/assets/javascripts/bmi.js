function calculateBMI() {
	var height=Number(document.getElementById("height").value);
	var weight=Number(document.getElementById("weight").value);

	height = height / 100;
	var bmi=weight/Math.pow(height,2);
	document.getElementById("bmi-result").classList.remove("d-none");
	document.getElementById("bmi-question").classList.remove("d-lg-block");
	document.getElementById("output").innerText=Math.round(bmi*100)/100;

	var output =  Math.round(bmi*100)/100;
	if (output<16.99){
		document.getElementById("comment").innerText = "Wychudzenie";
		document.getElementById("bmi-description").innerText = "Twoje BMI wskazuje na wychudzenie. Zalecam umówienie się na darmową konsultację dietetyczną, aby określić przyczyny tego stanu. Zmiany pod moim okiem pozwolą Ci wrócić do formy, zadbać o dobry wygląd, ale również zapobiec chorobom związanym ze zbyt małą wagą. Spożywanie niewystarczającej ilości składników odżywczych, witamin i minerałów jest niebezpieczne dla zdrowia.";
	}
	else   if (output>=17 && output<=18.49) {
		document.getElementById("comment").innerText = "Niedowaga";
		document.getElementById("bmi-description").innerText = "Twoje BMI wskazuje na niedowagę. Zalecam umówienie się na darmową konsultację dietetyczną, aby określić przyczyny tego stanu. Zmiany pod moim okiem pozwolą Ci wrócić do formy, zadbać o dobry wygląd, ale również zapobiec chorobom związanym ze zbyt małą wagą. Spożywanie niewystarczającej ilości składników odżywczych, witamin i minerałów jest niebezpieczne dla zdrowia.";
	}
      else   if (output>=18.5 && output<25) {
    		document.getElementById("comment").innerText = "Waga prawidłowa";
    		document.getElementById("bmi-description").innerText ="Twoje BMI jest w normie i z dużym prawdopodobieństwem mogę stwierdzić, że nie masz problemu ze zbędnymi kilogramami. Pamiętaj jednak, że warto co jakiś czas skontrolować swoją masę i skład ciała. W tym celu umów się na darmową konsultację podczas której wykonam badanie analizatorem składu masy i ciała. Podczas takiej konsultacji otrzymasz cenne wskazówki jak skutecznie utrzymać aktualną masę ciała lub co zrobić, by poprawić wygląd sylwetki.";
      }
      else   if (output>=25 && output<30) {
    		document.getElementById("comment").innerText = "Nadwaga";
    		document.getElementById("bmi-description").innerText = "Twoje BMI wskazuje na nadwagę. Zalecam umówienie się na darmową konsultację dietetyczną, aby określić przyczyny tego stanu. Zmiany pod moim okiem pozwolą Ci wrócić do formy, zadbać o dobry wygląd, ale również zapobiec chorobom związanym z nieprawidłowym żywieniem.";
      }
	else   if (output>=30 && output<35) {
		document.getElementById("comment").innerText = "Otyłość pierwszego stopnia";
		document.getElementById("bmi-description").innerText = "Twoje BMI wskazuje otyłość (I stopnia). W tym przypadku bardzo pomocna może okazać się konsultacja dietetyczna, aby określić przyczyny tego stanu. Umów się na darmową konsultację i zdecyduj czy chcesz podjąć się wprowadzenia bezpiecznych zmian pod moją opieką. Dzięki naszej współpracy możesz poprawić swój stan zdrowia, samopoczucie i sylwetkę.";
	}
	else   if (output>=35 && output<40) {
		document.getElementById("comment").innerText = "Otyłość drugiego stopnia";
		document.getElementById("bmi-description").innerText = "Twoje BMI wskazuje na otyłość II stopnia. Powinieneś niezwłocznie umówić się na darmową konsultację dietetyczną, aby ustalić i wprowadzić nowy plan żywieniowy. Otyłość nie tylko jest defektem estetycznym, ale również jest przyczyną pogarszającego się stanu zdrowia. Nieleczona prowadzi do takich chorób jak : nadciśnienie, miażdżyca, cukrzyca a nawet przyczynia się do powstawania niektórych nowotworów. Zmiany pod moim okiem pozwolą Ci skutecznie i bezpiecznie zadbać o zdrowie fizyczne i psychiczne, poprawić samopoczucie i sylwetkę.";
	}
	else   if (output>=40 && output<45) {
		document.getElementById("comment").innerText = "Otyłość trzeciego stopnia";
		document.getElementById("bmi-description").innerText = "Twoje BMI wskazuje na otyłość III stopnia. Powinieneś niezwłocznie umówić się na darmową konsultację dietetyczną, aby ustalić i wprowadzić nowy plan żywieniowy. Otyłość nie tylko jest defektem estetycznym, ale również jest przyczyną pogarszającego się stanu zdrowia. Nieleczona prowadzi do takich chorób jak : nadciśnienie, miażdżyca, cukrzyca a nawet przyczynia się do powstawania niektórych nowotworów. Zmiany pod moim okiem pozwolą Ci skutecznie i bezpiecznie zadbać o zdrowie fizyczne i psychiczne, poprawić samopoczucie i sylwetkę.";
	}
  else   if (output>=45) {
		document.getElementById("comment").innerText = "Otyłość czwartego stopnia";
		document.getElementById("bmi-description").innerText = "Twoje BMI wskazuje na otyłość IV stopnia. Powinieneś niezwłocznie umówić się na darmową konsultację dietetyczną, aby ustalić i wprowadzić nowy plan żywieniowy. Otyłość nie tylko jest defektem estetycznym, ale również jest przyczyną pogarszającego się stanu zdrowia. Nieleczona prowadzi do takich chorób jak : nadciśnienie, miażdżyca, cukrzyca a nawet przyczynia się do powstawania niektórych nowotworów. Zmiany pod moim okiem pozwolą Ci skutecznie i bezpiecznie zadbać o zdrowie fizyczne i psychiczne, poprawić samopoczucie i sylwetkę.";
  }
}