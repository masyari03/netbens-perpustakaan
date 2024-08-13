/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kelompok2;

import java.awt.Component;
import javax.swing.JOptionPane;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author arify
 */
public class ireport {

    public void cetak(Component rootPane) {
        try {
        JasperPrint jp = JasperFillManager.fillReport(getClass().getResourceAsStream("reportpinjam.jasper"), null, koneksi.getConnection());
        JasperViewer.viewReport(jp, false);
        } catch(Exception e) {
            JOptionPane.showMessageDialog(rootPane, e);
        }
    }

    public void arsip(Component rootPane) {
        try {
        JasperPrint jp = JasperFillManager.fillReport(getClass().getResourceAsStream("arsip.jasper"), null, koneksi.getConnection());
        JasperViewer.viewReport(jp, false);
        } catch(Exception e) {
            JOptionPane.showMessageDialog(rootPane, e);
        }
    }
    
    public void buku(Component rootPane) {
        try {
        JasperPrint jp = JasperFillManager.fillReport(getClass().getResourceAsStream("buku.jasper"), null, koneksi.getConnection());
        JasperViewer.viewReport(jp, false);
        } catch(Exception e) {
            JOptionPane.showMessageDialog(rootPane, e);
        }
    }
    
    public void mahasiswa(Component rootPane) {
        try {
        JasperPrint jp = JasperFillManager.fillReport(getClass().getResourceAsStream("mahasiswa.jasper"), null, koneksi.getConnection());
        JasperViewer.viewReport(jp, false);
        } catch(Exception e) {
            JOptionPane.showMessageDialog(rootPane, e);
        }
    }
    
    public void pegawai(Component rootPane) {
        try {
        JasperPrint jp = JasperFillManager.fillReport(getClass().getResourceAsStream("pegawai.jasper"), null, koneksi.getConnection());
        JasperViewer.viewReport(jp, false);
        } catch(Exception e) {
            JOptionPane.showMessageDialog(rootPane, e);
        }
    }
   
    
}
