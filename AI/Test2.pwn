// Define constants for dialog ID
#define DIALOG_VEHICLE_TUNING 1

// Main function to show tuning dialog
public OnPlayerCommandText(playerid, cmdtext[])
{
    if (strcmp(cmdtext, "/tune", true) == 0)
    {
        new vehicleid = GetPlayerVehicleID(playerid);
        if (vehicleid == INVALID_VEHICLE_ID) 
        {
            SendClientMessage(playerid, -1, "You are not in a vehicle.");
            return 1;
        }
        
        new components[VEHICLE_MODS_SLOTS][128];
        new componentCount[VEHICLE_MODS_SLOTS];
        
        // Loop through all component IDs and check if they're legal on the vehicle
        for (new componentid = 0; componentid < MAX_VEHICLE_COMPONENTS; componentid++) 
        {
            if (VehicleCanHaveComponent(GetVehicleModel(vehicleid), componentid))
            {
                new slot = GetVehicleComponentType(componentid);
                components[slot][componentCount[slot]++] = componentid;
            }
        }
        
        new dialogText[1024];
        strcat(dialogText, "Select a component to install:\n\n");
        
        // Loop through each slot to list available components
        for (new slot = 0; slot < VEHICLE_MODS_SLOTS; slot++)
        {
            if (componentCount[slot] > 0)
            {
                new line[64];
                format(line, sizeof(line), "Slot %d:\n", slot + 1);
                strcat(dialogText, line);
                
                for (new i = 0; i < componentCount[slot]; i++)
                {
                    format(line, sizeof(line), "Component %d\n", components[slot][i]);
                    strcat(dialogText, line);
                }
                
                strcat(dialogText, "\n");
            }
        }
        
        ShowPlayerDialog(playerid, DIALOG_VEHICLE_TUNING, DIALOG_STYLE_LIST, "Vehicle Tuning", dialogText, "Select", "Cancel");
        return 1;
    }
    
    return 0;
}

// Callback function for dialog responses
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if (dialogid == DIALOG_VEHICLE_TUNING && response)
    {
        new vehicleid = GetPlayerVehicleID(playerid);
        if (vehicleid != INVALID_VEHICLE_ID) 
        {
            new selectedComponent = GetSelectedComponent(listitem);
            if (selectedComponent != -1) 
            {
                AddVehicleComponent(vehicleid, selectedComponent);
                SendClientMessage(playerid, -1, "Component installed successfully.");
            }
            else 
            {
                SendClientMessage(playerid, -1, "Invalid component selection.");
            }
        }
        else 
        {
            SendClientMessage(playerid, -1, "You are not in a vehicle.");
        }
        return 1;
    }
    
    return 0;
}

// Helper function to determine selected component from the list item
GetSelectedComponent(listitem)
{
    new components[VEHICLE_MODS_SLOTS][128];
    new index = 0;
    
    for (new slot = 0; slot < VEHICLE_MODS_SLOTS; slot++)
    {
        for (new i = 0; i < sizeof(components[slot]); i++)
        {
            if (index++ == listitem) 
            {
                return components[slot][i];
            }
        }
    }
    
    return -1;
}

/*
---
title: VehicleCanHaveComponent
description: Is the component legal on a vehicle model?
tags: ["vehicle"]
---

<VersionWarn version='omp v1.1.0.2612' />

## Description

Is the component legal on the vehicle model?

| Name                                     | Description                   |
| ---------------------------------------- | ----------------------------- |
| modelid                                  | Vehicle Model ID              |
| component                                | ID of the component to check. |

## Returns

**true** - The component is legal on the vehicle.

**false** - The component is illegal on the vehicle.

## Examples

```c
new vehicleid = GetPlayerVehicleID(playerid);

if (VehicleCanHaveComponent(GetVehicleModel(vehicleid), 1010))
{
    SendClientMessage(playerid, 0x00FF00FF, "Nitro is legal on this vehicle.");
}
else
{
    SendClientMessage(playerid, 0xFF0000FF, "Nitro is illegal on this vehicle.");
}
