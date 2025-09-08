# 📰 News API App

A modern Flutter-based News Application that fetches real-time news from [NewsAPI.org](https://newsapi.org/) and displays them in an engaging, user-friendly interface. The app features **Top Stories**, **Trending News**, and **Category-wise Exploration**, along with in-app web views for complete articles.

---

## Features 🚀

- **Landing Page** 🏠  
  - Welcoming page before navigating to the main content.  

- **Home Page** 📰  
  - Displays **Top Stories** in a horizontal scrollable list.  
  - **Explore Categories** in a circular horizontal list for quick navigation.  
  - **Trending Section** showing latest trending news.  

- **Category-wise News** 🗂️  
  - Tap a category to view news specific to that category (e.g., Business, Sports, Technology).  

- **Full Article View** 🌐  
  - All news items are clickable and open in an **in-app WebView** for complete reading.  

- **Loading & Image Handling** ✨  
  - Uses **cached network images** for faster image loading.  
  - Shows placeholder images for unavailable URLs.  

---

## Screenshots 📸

### **Landing Page**
<img src="screenshots/1Landing.jpg" width="300"/>

### **Home Page with Top Stories, Explore & Trending Section**
> Click to navigate to web page and view the full story.
<p>
<img src="screenshots/2Home.jpg" width="300"/>
<img src="screenshots/3WebView.jpg" width="300"/>
<img src="screenshots/4Home.jpg" width="300"/>
<img src="screenshots/5WebView.jpg" width="300"/>
</p>  

### **Explore Categories Section**  
<p>
<img src="screenshots/6Explore.jpg" width="300"/>
<img src="screenshots/9Explore.jpg" width="300"/>
<img src="screenshots/7Explore.jpg" width="300"/>
<img src="screenshots/10Explore.jpg" width="300"/>
<img src="screenshots/11Explore.jpg" width="300"/>
</p>  

### **Trending Web View**  
<img src="screenshots/8Trending.jpg" width="300"/>

---

## API 🌐

This app fetches real-time news data from [NewsAPI.org](https://newsapi.org/).  

- **Top Stories Endpoint** → `https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=YOUR_API_KEY`  
- **Category News Endpoint** → `https://newsapi.org/v2/top-headlines?country=us&category=CATEGORY_NAME&apiKey=YOUR_API_KEY`  
- **Trending News Endpoint** → `https://newsapi.org/v2/everything?domains=wsj.com&apiKey=YOUR_API_KEY`  

> **Note:** Replace `YOUR_API_KEY` with your personal NewsAPI key. Use `.env` file to securely store API keys.

---

## Dependencies 📦

- [`cached_network_image`](https://pub.dev/packages/cached_network_image) – Efficient network image caching.  
- [`flutter_dotenv`](https://pub.dev/packages/flutter_dotenv) – Manage API keys securely.  
- [`http`](https://pub.dev/packages/http) – HTTP requests for fetching news data.  
- [`webview_flutter`](https://pub.dev/packages/webview_flutter) – Display full news articles within the app.

---

## Tech Stack 🛠️

- **Flutter** – Cross-platform mobile framework.  
- **Dart** – Programming language.  
- **NewsAPI.org** – Real-time news data provider.  
- **VS Code / Android Studio** – IDEs for development.  
- **Git** – Version control.

---

## Setup Instructions ⚙️

### Clone and Run
```bash
git clone https://github.com/muhammadXainAhmad/covid19_tracker_flutter
cd covid19_tracker_flutter
flutter pub get
flutter run
```

---

## License 📄
This project is licensed under the [MIT License](LICENSE).
