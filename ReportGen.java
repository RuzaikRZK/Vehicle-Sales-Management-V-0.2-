/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vehiclesalesmanagement;

import com.itextpdf.text.BadElementException;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.Barcode128;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import net.connectcode.Code128Auto;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.swing.JRViewer;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author Thiline Tissera
 */
public class ReportGen extends javax.swing.JFrame {
    public static String cNic= Customer.cNic; //"";
    
     private int pdfCount =0;

    /**
     * Creates new form ReportGen
     */
    public ReportGen() {
        initComponents();
       // b3.setVisible(false);
       //   t1.setVisible(false);
       //   t2.setVisible(false);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        dic_card = new javax.swing.JButton();
        Cus_rep = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        dic_card.setText("Discount Card");
        dic_card.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                dic_cardActionPerformed(evt);
            }
        });

        Cus_rep.setText("Report");
        Cus_rep.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Cus_repActionPerformed(evt);
            }
        });

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "Customer Date", "CID", "NIC", "Name", "Brand Name", "Amount"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(dic_card, javax.swing.GroupLayout.DEFAULT_SIZE, 509, Short.MAX_VALUE)
                    .addComponent(Cus_rep, javax.swing.GroupLayout.DEFAULT_SIZE, 509, Short.MAX_VALUE)
                    .addComponent(jScrollPane1))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(Cus_rep)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(dic_card)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 248, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(16, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void Cus_repActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Cus_repActionPerformed
       /*   dic_card.setVisible(false);
          Cus_rep.setVisible(false);
        //  b3.setVisible(true);
         // t1.setVisible(true);
         // t2.setVisible(true);
          
           this.setVisible(false);
        try {
                
                JFrame re = new JFrame("Report");
                Connection db = Database.getConnection();
                //Connection db = Database.getData("select cid FROM customer ");
                //ResultSet rs = Database.getData("select d_id FROM discount WHERE barcodeId = '" + nic + "'");
                Map par = new HashMap();
                par.put("nic", Customer.cNic);
               // par.put("sday", t1.getText());
               // par.put("eday", t2.getText());
                JRViewer vi = null;

                JasperPrint p = JasperFillManager.fillReport("C:\\Users\\it17153232\\Desktop\\Vehicle Sale Project\\Project\\VehicleSalesManagement\\src\\Reports\\select_cus.jasper", par, db);
                vi = new JRViewer(p);
                vi.setVisible(true);
                re.setSize(1000, 700);
                re.add(vi);
                re.setVisible(true);
                // System.out.println("a");
            } catch (Exception e) {
                e.printStackTrace();
            }*/
       
       
            //String nic=  Customer.cNic;
            
            int cid = 0;
            String name = null;
       String nic=Customer.cNic;
       
        try {
            ResultSet rs=Database.getData("select c_id from customer where NIC='"+nic+"'");
            while (rs.next()) {                
                cid=rs.getInt("cid");
                name=rs.getString("name");
            }
            
            
            
            
            
        } catch (Exception e) {
        }
        
        
        try {
            
            DefaultTableModel dtm  = (DefaultTableModel ) jTable1.getModel();
            ResultSet rs = Database.getData("select * from sale where c_id='"+cid+"'");
            while (rs.next()) {                
                
                
                Vector v = new Vector();
                v.add(rs.getString("selling_date"));
                v.add(rs.getString("c_id"));
                v.add(rs.getString("NIC"));
                v.add(name);
                v.add(rs.getString("brand"));
                v.add(rs.getString("selling_price"));
                dtm.addRow(v);
                
                
                
                
            }
            
            while(rs.next()){
            
                
                
                
            
            }
        } catch (Exception e) {
        }
       
       
         
       
       
          
    }//GEN-LAST:event_Cus_repActionPerformed

    private void b3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_b3ActionPerformed
        // TODO add your handling code here:
        this.setVisible(false);
        try {
                
                JFrame re = new JFrame("Report");
                Connection db = Database.getConnection();
                //Connection db = Database.getData("select cid FROM customer ");
                //ResultSet rs = Database.getData("select d_id FROM discount WHERE barcodeId = '" + nic + "'");
                Map par = new HashMap();
                par.put("nic", Customer.cNic);
               // par.put("sday", t1.getText());
               // par.put("eday", t2.getText());
                JRViewer vi = null;

                JasperPrint p = JasperFillManager.fillReport("C:\\Users\\it17153232\\Desktop\\Vehicle Sale Project\\Project\\VehicleSalesManagement\\src\\Reports\\select_cus.jasper", par, db);
                vi = new JRViewer(p);
                vi.setVisible(true);
                re.setSize (1300, 1000);//(1000, 700);
                re.add(vi);
                re.setVisible(true);
                // System.out.println("a");
            } catch (Exception e) {
                e.printStackTrace();
            }
    }//GEN-LAST:event_b3ActionPerformed

    private void dic_cardActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_dic_cardActionPerformed
        System.out.println("CNIC : " + cNic);
        try 
        {
            Document doc = new Document(new Rectangle(PageSize.A4));
            try 
            {
                PdfWriter p = PdfWriter.getInstance(doc, new FileOutputStream("D://"+(cNic)+".pdf"));
                
                doc.open();
                Barcode128 b = new Barcode128();
                b.setCode(cNic);
                doc.add(b.createImageWithBarcode(p.getDirectContent(), null,null));
                
                try 
                
                {
                    //Add image
                    doc.add(Image.getInstance("C:\\Users\\it17153232\\Desktop\\Vehicle Sale Project\\Project\\VehicleSalesManagement\\src\\Reports\\dicount.jpg"));
                } 
                catch (BadElementException ex) 
                {
                    Logger.getLogger(ReportGen.class.getName()).log(Level.SEVERE, null, ex);
                }
                catch (IOException ex) 
                {
                    Logger.getLogger(ReportGen.class.getName()).log(Level.SEVERE, null, ex);
                }
                doc.close();
            JOptionPane.showMessageDialog(null,"Discount card created Successfully.");
            } 
            catch (FileNotFoundException ex) 
            {
                Logger.getLogger(ReportGen.class.getName()).log(Level.SEVERE, null, ex);
            }
              }
        catch (DocumentException ex)
        {
            Logger.getLogger(ReportGen.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_dic_cardActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ReportGen.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ReportGen.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ReportGen.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ReportGen.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ReportGen().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Cus_rep;
    private javax.swing.JButton dic_card;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
}
