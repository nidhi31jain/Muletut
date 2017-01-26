package com.muletut.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.muletut.dao.DaoService;
import com.muletut.entity.Tutorial;
import com.muletut.exceptions.MuletutException;

@Service("muletutService")
public class MuletutServiceImpl implements MuletutService {
	@Autowired
	DaoService daoService;

	/************* Add Menu Items ***************/
	public boolean addMenuItems() throws MuletutException {
		String[] menuItemsNames = new String[] { "overview", "environment setup",
				"building your first mule application", "flows", "http", "file", "database", "variable", "java",
				"entry point resolver", "invoke", "dataweave - getting started", "dataweave - operators", "filters",
				"catch exception strategy", "reference exception strategy", "choice exception strategy", "object store",
				"batch processing", "java virtual machine(VM)", "JMS", "for each", "choice", "poll", "scatter gather",
				"collection splitter", "collection aggregator", "composite source", "property", "salesforce", "web service consumer" };
		return daoService.addMenuItems(menuItemsNames);

	}

	/************* Get All Menu Items ***************/
	public ArrayList<String> getMenu() throws MuletutException {
		ArrayList<String> menuItems = daoService.getMenu();
		return menuItems;

	}

	/******************** Read file *****************/
	public String readFile(String title) throws MuletutException {
		StringBuilder contentBuilder = null;
		System.out.println(title);
		BufferedReader br = null;
		try {
			contentBuilder = new StringBuilder();
			br = new BufferedReader(new InputStreamReader(
					Thread.currentThread().getContextClassLoader().getResourceAsStream(title + ".html")));
			String str;
			boolean flag = false;
			while ((str = br.readLine()) != null) {
				contentBuilder.append(str);
				if (flag) {
					contentBuilder.append(System.getProperty("line.separator"));
				}
				if (!flag) {
					flag = str.contains("<pre>");
				}
				if (str.contains("</pre>"))
					flag = false;

			}
			System.out.println(contentBuilder);
			br.close();
		} catch (IOException e) {
			throw new MuletutException("Can't read file");
		} finally {
			try {
				br.close();
			} catch (IOException e) {
				throw new MuletutException("Can't read file");
			}
		}
		String content = contentBuilder.toString();
		File file = new File("F:/data1.html");
		FileWriter fw = null;
		try {
			fw = new FileWriter(file.getAbsoluteFile());
			@SuppressWarnings("resource")
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(content);
			bw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return content;
	}

	public void search(String searchString) {
		String path = "/WEB-INF/tuts/installtion.html";
		File folder = new File(path);
		System.out.println(folder.listFiles().toString());

	}
}
