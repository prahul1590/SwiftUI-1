# Weather App

A simple SwiftUI weather app that displays the current weather and forecast for a location. The user can toggle between day and night mode to change the appearance of the app.

## Features

- **Current Weather Display**: Shows the current weather with an icon and temperature.
- **Forecast**: Displays the weather forecast for the next seven days.
- **Day/Night Toggle**: A button to switch between day and night modes.

## Screenshots

<img src="https://github.com/prahul1590/SwiftUI-1/assets/156734352/16758f43-32e2-4312-ba34-8fc36418607f" alt="Simulator Screenshot - iPhone 15 Pro - 2024-04-24 at 18 54 10" width="300">

<img src="https://github.com/prahul1590/SwiftUI-1/assets/156734352/85967cac-5ff4-49d3-9079-ccd206b25e4e" alt="Simulator Screenshot - iPhone 15 Pro - 2024-04-24 at 18 54 07" width="300">

## Requirements

- iOS 14.0+
- Xcode 13.0+
- SwiftUI

## Installation

1. Clone the repository:

    ```bash
    git clone [https://github.com/prahul1590/WeatherApp.git](https://github.com/prahul1590/SwiftUI-1.git)
    ```

2. Open `BeginLearning.xcodeproj` in Xcode.
3. Run the app on a simulator or a physical device.

## Usage

- **Current Weather**: The main view displays the current weather condition and temperature for Cupertino, CA.
- **Forecast**: Below the main view, you'll find the weather forecast for the next seven days.
- **Day/Night Toggle**: Tap the "Change Day Time" button to switch between day and night modes.

## Code Structure

- **ContentView.swift**: Main view that integrates all the components.
- **WeatherDayView.swift**: View for displaying individual days in the forecast.
- **MainWeatherView.swift**: View for displaying the main weather condition and temperature.
- **BackgroundView.swift**: View for setting the background color gradient based on day or night.
- **CityTextView.swift**: View for displaying the city name.
- **WeatherChangeDayButton.swift**: Custom button view for toggling day/night mode.

## Customization

- **Background**: The background color gradient changes based on day or night mode.
- **Icons**: Weather icons change dynamically based on weather conditions.

## Future Improvements

- Implement location-based weather data retrieval.
- Add more weather conditions and icons.
- Improve UI/UX for better user interaction.

## Credits

- **Rahul Patel**: Developer

## License

This project is licensed under the MIT License. See `LICENSE` for more details.

---

Feel free to fork and contribute to this project. If you encounter any issues or have suggestions, please open an issue or create a pull request. Enjoy coding!
