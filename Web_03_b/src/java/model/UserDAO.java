/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Dang Khoa
 */
public class UserDAO {

    public ArrayList<UserDTO> list = new ArrayList<>();

    public UserDAO() {
        list = new ArrayList<>();
        list.add(new UserDTO("admin", "toideptrai", "alexander brahamut"));
        list.add(new UserDTO("traidepthanhhoa", "toibingu36", "Dang Dang Khoa"));
    }

    public UserDTO searchByID(String username) {
        for (UserDTO userDTO : list) {
            if (userDTO.getUsername().equalsIgnoreCase(username)) {
                return userDTO;
            }
        }
        return null;
    }

    public UserDTO login(String username, String password) {
        UserDTO u = searchByID(username);
        if (u != null && u.getPassword().equals(password)) {
            return u;
        }
        return null;
    }
}
