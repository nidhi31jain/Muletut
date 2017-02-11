package com.muletut.service;

import java.util.ArrayList;

import com.muletut.exceptions.MuletutException;

public interface MuletutService {

	/**
	 * Method to add index menu items
	 * @return
	 * @throws MuletutException
	 */
	boolean addMenuItems() throws MuletutException;

	/**
	 * Method to add get index menu items
	 * @return
	 * @throws MuletutException
	 */
	ArrayList<String> getIndexMenu() throws MuletutException;

	/**
	 * Method to read the tutorial file
	 * @param title
	 * @return
	 * @throws MuletutException
	 */
	String readFile(String title) throws MuletutException;

	void search(String searchString);

	/**
	 * Method to add reference menu items
	 * @return
	 * @throws MuletutException
	 */
	boolean addReferenceMenuItems() throws MuletutException;

	/**
	 * Method to Get reference menu items
	 * @return
	 * @throws MuletutException
	 */
	ArrayList<String> getReferenceMenu() throws MuletutException;

}
