Sachverhalt: 

Nach Abschluss der Weiterbildung arbeiten Sie nun bei der Borngraben IT Dienstleistung Services GmbH. Ihr Kollege, Günther Siegfried, ein Softwareentwickler, hat Ihnen eine To-Do-Liste gegeben. Günther hat nicht das nötige Wissen im Bereich DevOps, weshalb er Sie als DevOps Engineer gebeten hat, ihm bei der Umsetzung zu helfen. Ihre Aufgabe ist es, ihm zu assistieren und die folgenden Schritte zu erledigen. 

Aufgaben: 

1. To-Do-Liste erstellen: 
- Das Frontend ist bereits in Vanilla JavaScript geschrieben. Es besteht aus einer einfachen To-Do-Liste, in der Aufgaben hinzugefügt und angezeigt werden können. 
- Das Backend ist mit Java, Spring Boot, und Maven entwickelt. Das Backend dient lediglich zu Logging-Zwecken, um die hinzugefügten Aufgaben zu protokollieren. 

2. Dockerfiles für Frontend und Backend: 
- Erstelle Dockerfiles, um sowohl das Frontend als auch das Backend in Docker-Containern zu verpacken. 
  - Das Frontend wird mit Nginx bereitgestellt, um die statischen Dateien zu bedienen. 
  - Das Backend wird als Spring Boot-Anwendung in einem JAR-Container verpackt. 

3. Docker-Compose Setup: 
- Erstelle eine Docker-Compose-Datei, um beide Container (Frontend und Backend) lokal zusammen auszuführen und miteinander kommunizieren zu lassen. 
- Teste, ob das Frontend erfolgreich auf das Backend zugreifen kann. 

4. Kubernetes Deployment und Services: 
- Erstelle Kubernetes Deployment und Service-Konfigurationen für das Frontend und Backend, damit beide Container im Kubernetes-Cluster laufen können. 
- Stelle sicher, dass das Frontend über den Service-Namen auf das Backend zugreifen kann. 

5. Shell-Skript zur Automatisierung: 
- Schreibe ein Shell-Skript, das automatisch den Docker-Compose-Prozess startet und sicherstellt, dass neue Docker-Images gebaut werden. 
- Nachdem die neuen Docker-Images gebaut wurden, soll das Skript die Kubernetes-Manifeste automatisch aktualisieren. 