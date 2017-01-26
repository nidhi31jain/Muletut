package com.muletut.service;

import java.util.ArrayList;

import com.muletut.exceptions.MuletutException;

public interface MuletutService {

	ArrayList<String> getMenu() throws MuletutException;

	String readFile(String title) throws MuletutException;

	void search(String searchString);

	boolean addMenuItems() throws MuletutException;

}
