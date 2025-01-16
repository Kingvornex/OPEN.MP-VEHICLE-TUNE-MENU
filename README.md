
# OPEN.MP Vehicle Tune Menu

A SA-MP (San Andreas Multiplayer) filterscript that adds a vehicle tuning menu, allowing players to customize their vehicles with various components such as spoilers, bumpers, nitro, wheels, and more. The components are loaded from a configuration and can be purchased and applied in-game.

## Features

- **Dynamic Vehicle Tuning**: Players can customize vehicles by adding components like spoilers, nitro, wheels, bumpers, and more.
- **Vehicle-Specific Components**: Only available components for a specific vehicle model are shown in the menu.
- **Cost Management**: Each component has a price, and players need to confirm their purchase.
- **Menu System**: The script uses dialogs to show options for available components and to confirm purchases.
- **Player Feedback**: Sound effects and messages are shown to players when they interact with the menu or make a purchase.

## Installation

1. **Download the Filterscript**:
   - Clone or download the repository to your server's `filterscripts` folder.

2. **Configuration**:
   - Edit the `car components.pwn` file to add or modify vehicle components. The components are defined in the `componentlist` array.
   - The script supports customizing components such as model names, part/slot type, compatible cars, and their costs.

3. **Server Setup**:
   - Add the script to your `server.cfg` under the `filterscripts` line:
   ```plaintext
   filterscripts vehicle_tune_menu
   ```

4. **Dependencies**:
   - This script relies on the following include files:
     - `<open.mp>`
     - `<izcmd>`
     - `<easyDialog>`
   - Make sure these includes are present and properly set up on your server.

## Script Overview

### Component List

The `componentlist` array defines all available components for vehicles. Each component has the following attributes:
- **ID**: A unique identifier for the component.
- **Model Name**: The model name of the component.
- **Part/Slot**: The vehicle part or slot to which the component applies (e.g., "Spoiler", "Bumper").
- **Type**: The category of the component (e.g., "Pro", "Basic").
- **Cars**: The list of vehicles that can use this component.
- **Cost**: The cost of the component in the game currency.

### Main Menu Dialog

When a player enters the `/tuneme` command, they are shown a list of available vehicle components in the tuning menu, such as:
- Spoilers
- Hood
- Roof
- Side Skirt
- Lamps
- Nitro
- Exhaust
- Wheels
- Stereo
- Hydraulics
- Bumpers
- Paint Jobs
- Neons

### Component Selection

After selecting a component category (e.g., Spoilers, Bumpers), the player is presented with a list of available components for their vehicle, including the type and price. The script checks if the vehicle can have the selected component and displays only valid options.

### Confirming Purchase

Once a component is selected, the player is prompted to confirm the purchase. If they confirm, the component is added to the vehicle, and the player is charged the specified cost. If they decline, the component is removed, and the main menu is shown again.

### Commands

- `/tuneme`: Opens the vehicle tuning menu for the player to customize their vehicle.
- `Dialog` callbacks handle the display of various menus and the purchase process.

## Example Usage

1. A player types `/tuneme` to open the vehicle tuning menu.
2. The menu shows categories like "Spoiler", "Exhaust", "Wheels", etc.
3. The player selects a category (e.g., "Spoiler").
4. The available components for the selected category are shown, including the price.
5. The player selects a component and confirms the purchase.
6. The selected component is added to the vehicle, and the player's money is deducted.

## Notes

- This script is designed for use with the **OPEN.MP** server framework.
- Ensure that the vehicle models and components are correctly configured in the `componentlist`.
- The script automatically adjusts the menu based on the vehicle's capabilities (e.g., some components are only available for certain vehicles).

## Contributions

Feel free to fork this repository and contribute improvements or fixes. You can also submit issues or feature requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

For any questions or issues, please open an issue in the GitHub repository.