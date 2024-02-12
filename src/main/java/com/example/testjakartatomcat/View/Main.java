/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.testjakartatomcat.View;

import com.example.testjakartatomcat.DAO.GamesDAO;
import com.example.testjakartatomcat.DAO.UsersDAO;
import com.example.testjakartatomcat.DBSQL.DBConnect;
import com.example.testjakartatomcat.Model.Games;
import com.example.testjakartatomcat.Model.Users;

import java.util.ArrayList;
/**
 *
 * @author Lenovo               
 */
public class Main {
    public static void main(String args[]){
        DBConnect con = new DBConnect();
        if (con.connect() != null) {
            System.out.println("Nice");
        }
        UsersDAO usersDAO = new UsersDAO(con.getCon());
        ArrayList<Users> u = usersDAO.selectAll();
        for (int i = 1; i < u.size(); i++) {
            System.out.println(u.get(i).getNickname());
        }
        GamesDAO gamesDAO = new GamesDAO(con.getCon());
        Games game = gamesDAO.getGame(1);
        System.out.println(game.getTitle());
       //try{
            //DocumentBuilder docBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            //Document document = docBuilder.parse("XMLDoc.xml");
        //}
        //catch(){}
    }
}
