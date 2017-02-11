package com.muletut.dao;

import java.util.ArrayList;

import com.muletut.entity.Tutorial;
import com.muletut.exceptions.MuletutException;

public interface DaoService {

	/**
	 * Method to add add index menu items
	 * @param menuItemsNames
	 * @return
	 * @throws MuletutException
	 */
	boolean addMenuItems(String[] menuItemsNames) throws MuletutException;

	/**
	 * Method to get index menu items
	 * @return
	 * @throws MuletutException
	 */
	ArrayList<String> getIndexMenu() throws MuletutException;

	/**
	 * Method to add reference menu items
	 * @param referenceMenuItemsNames
	 * @return
	 * @throws MuletutException
	 */
	boolean addReferenceMenuItems(String[] referenceMenuItemsNames) throws MuletutException;

	/**
	 * Method to get reference menu items
	 * @return
	 * @throws MuletutException
	 */
	ArrayList<String> getReferenceMenu() throws MuletutException;

}
