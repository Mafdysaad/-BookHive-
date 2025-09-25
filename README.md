# BookHive APP

A Flutter application that fetches books from an API and allows users to explore, view bestseller lists, check ratings, and see prices.  
The project is built using **Cubit** for state management and follows the **MVVM** architecture.

## Features

- Fetch books dynamically from an API.
- Display detailed book information including title, author, rating, and price.
- Browse bestseller lists.
- Search and filter books.
- Responsive UI for mobile and web.
- State management handled with **Cubit**.
- Clean architecture using **MVVM** for separation of concerns.

## Screenshots


**Home Screen**  
![Home Screen](assets/images/Screenshot_1748623518.png)

**Book Details Screen**  
![Home Screen](assets/images/Screenshot_1748623655.png)

**Splash Screen**  
![Home Screen](assets/images/Screenshot_1748623254.png)

## Installation

1. Clone the repository:  
   ```bash
   git clone https://github.com/your-username/book-explorer-app.git
   
2. Navigate to the project folder:  
   ```bash
   cd book-explorer-app
   
3. Install dependencies:  
   ```bash
   flutter pub get
   
4. Run the app :  
   ```bash
   flutter run


```text
lib/
├─ constants/      # app theme configuration and styles
├─ core/
│  ├─ const
│  │  └─ widget  # constants widget 
│  ├─ error    # custom error definitions and exceptions
│  └─ utils   # Helper functions and constants
├─ features/  # Cubits and business logic (MVVM ViewModels)
│  ├─ Home
│  │  ├─ Data
│  │  │  ├─ modles
│  │  │  │  └─ book modle # represents a Book object with title, author, rating, price
│  │  │  └─ repo  # fetches books and bestsellers from the API.
│  │  └─ presentation
│  │     ├─ view_models
│  │     │  ├─ featured_book_cubit   # Handles the logic and state for featured book
│  │     │  └─ relevance_book_cubit  # Handles book details and related actions
│  │     └─ views
│  │         └─ widget  # contains reusable UI components
│  └─ splash
│      ├─ view_models
│      │  └─  featured_book_cubit   # Loads initial data from API
│      └─ views
│         └─ widget  # contains reusable UI components
│  
├─ functions/    # API calls and data handling
│
└─ main.dart      # Entry point of the app

assets/
├─ images/        # Screenshots, icons, book covers
└─ fonts/         # Custom fonts
       
