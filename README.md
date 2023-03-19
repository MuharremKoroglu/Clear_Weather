# Clear Weather
### Hi there, I'm Muharrem <img src = "https://raw.githubusercontent.com/MartinHeinz/MartinHeinz/master/wave.gif" width = "42"> 
#### Thank You for taking the time to view my repository 

## <h2> About This App <img src = "https://c.tenor.com/JsoERRQcZqYAAAAi/thumbs-up-joypixels.gif" width = "42"></h2>
This app shows developers how asynchronous operations work in the Swift programming language. The application is built using "SwiftUI". The weather services we use in the application are received through the "Open Weather" API. Here, the name of the city, the country it is located in, its temperature, weather description, wind speed, humidity, pressure information, and finally the weather icon are taken. The application was primarily designed according to how data is received from the internet under normal conditions. The application was made by the MVVM architecture. In this way, both MVVM and threading issues were addressed. First, we created the model we will use. It was prepared to take into account the JSON data that came to us here. Then we created our internet service. Here you will see three different functions. The fetchWeatherCondition() function is a function type that we often encounter in daily life. It is a process we frequently use when we need to retrieve data from the Internet. It's in the comment as the user needs to see how the application is transformed step by step with asynchronous functions. On the same page, you will see the fetchWeatherConditionAsync() function. This function was created using the "async" and "await" keywords. Note that URLSession.shared.data is used here. This feature entered our lives with iOS 15 and works directly asynchronously. If the user wants, he can create an internet service with this function. In addition, you see the fetchWeatherConditionContinuation() function on the same page. In this function, our first non-asynchronous function has been made asynchronous by using the "Continuation" features. Thus, the user has seen an example of how he can create three different types of internet service while creating it. Since the application is prepared by the MVVM structure, let's look at our ViewModel file now. Here, ObservableObject should first draw our attention. This statement says that the operations that will take place here are observable. After putting "@Published" in the variables, information will go to the main screen every time the variables are changed. In addition, the getWeatherCondition() function is a function that should be used with the fetchWeatherCondition() internet service function. In other words, it is a function that most people use under normal conditions. You will see the getWeatherConditionAsync() function on the same page. This function is a function that should be used with the fetchWeatherConditionAsync() internet service function. Here, the function is made asynchronous by using the "async" and "await" keywords. Finally, on the same page, the getWeatherConditionContinuation() function should be used together with the fetchWeatherConditionContinuation() internet service function. You see a difference inside the function. The "@MainActor" expression we use at the beginning of the page makes this difference. This statement indicates that the processes on this page will be on the main thread. If you want to use this statement, you can omit the DispatchQueue.main.async statement. Finally, let's move on to the "View" side. Here, we first create an object from our "ViewModel" class with @ObservedObject. This way, all changes are pushed to the main view instantly. In addition, if you are going to use the application with the fetchWeatherCondition() service and the getWeatherCondition() model functions, you should use the "onAppear" method so that the application will pull the data on the first boot. This process is not asynchronous. On the buttons, you can use the functions normally. But if you are going to use "Async- Await" or "Continuation" services and functions, you should use the "task" method. Since this method is asynchronous, it accepts the "await" keyword and you can process it. You can also perform asynchronous operations on the buttons by using the "Task" function. To get the weather icons, we use the asynchronous "AsyncImage" class that we use with SwiftUI. Finally, we complete the application by making some code improvements.

<a href="https://openweathermap.org/" target="_blank">Visit OpenWeather API</a><br>


<h2> Used Technologies <img src = "https://media2.giphy.com/media/QssGEmpkyEOhBCb7e1/giphy.gif?cid=ecf05e47a0n3gi1bfqntqmob8g9aid1oyj2wr3ds3mg700bl&rid=giphy.gif" width = "42"> </h2>
<div class="row">
      <div class="column">
<img width ='72px' src 
     ='https://raw.githubusercontent.com/MuharremKoroglu/MuharremKoroglu/main/swift-icon.svg'>
  </div>
</div>

<h2> Used Language <img src = "https://media.giphy.com/media/Zd6jPg8hcp4Q3vrvjo/giphy.gif" width = "42"> </h2>
<div class="row">
      <div class="column">
<img width ='82px' src 
     ='https://raw.githubusercontent.com/MuharremKoroglu/Bitcoin/main/Flag_of_the_United_Kingdom.svg'>
  </div>
</div>

<h2> Images <img src = "https://media2.giphy.com/media/psneItdLMpWy36ejfA/source.gif" width = "62"> </h2>
  <div class="column">





https://user-images.githubusercontent.com/68854616/226166786-adf80e8f-25df-477c-bd8f-55df6bd5cef8.mp4






  </div>
<h2> Connect with me <img src='https://raw.githubusercontent.com/ShahriarShafin/ShahriarShafin/main/Assets/handshake.gif' width="100"> </h2>
<a href = 'mailto:muharremkoroglu245@gmail.com'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/MuharremKoroglu/MuharremKoroglu/main/gmail-logo-2561.svg"/></a> &nbsp;
<a href = 'https://www.linkedin.com/in/muharremkoroglu/'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/rahulbanerjee26/githubAboutMeGenerator/main/icons/linked-in-alt.svg"/></a> &nbsp;
<a href = 'https://muharremkoroglu.medium.com/'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/rahulbanerjee26/githubAboutMeGenerator/main/icons/medium.svg"/></a> &nbsp;
<a href="https://www.instagram.com/m.koroglu99/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg" alt="_._.adam._"  width="32px" align= 'center' /></a> &nbsp;
<a href = 'https://synta-x.com/'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/MuharremKoroglu/MuharremKoroglu/main/internet-svgrepo-com%20(2).svg"/></a> &nbsp;
