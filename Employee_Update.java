/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vehiclesalesmanagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.swing.JOptionPane;

/**
 *
 * @author user
 */
public class Employee_Update extends javax.swing.JFrame {

    private static String empID;
    //private static String emp;

    /**
     * Creates new form Employee_Update
     */
    public Employee_Update(String empID) {
        
        this.empID = empID;
        
        initComponents();
        this.setLocationRelativeTo(null);
        
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehiclesalesmanagement", "root", "");
                ps = conn.prepareStatement("select * from employee where EID=?");
                ps.setString(1, empID);
                rs = ps.executeQuery();
                while(rs.next()){
                    jTextFieldEmpID.setText(rs.getString("EID"));
                    jTextFieldFName.setText(rs.getString("First_name"));
                    jTextFieldLName.setText(rs.getString("Last_name"));
                    jTextFieldNIC.setText(rs.getString("NIC"));
                    jTextAreaAddress.setText(rs.getString("Address"));
                    jTextFieldEmail.setText(rs.getString("Email"));
                    jTextFieldPhone.setText(rs.getString("Phone"));
                    jTextFieldBarcode.setText(rs.getString("Barcode"));
                    
                }
                
                    /*String val = jLabelEmpID.getText();
                if(val.isEmpty()){
                    jLabelError.setText("Enter a Valid Employee");
                }
                else{
                    
                    jLabelError.setText(null);
                    
                    Date d = new Date();
                    SimpleDateFormat a = new SimpleDateFormat("dd-MM-yyyy");
                    jLabel4.setText(a.format(d));
                
                    //Date d = new Date();
                    SimpleDateFormat t = new SimpleDateFormat("HH:mm:ss");
                    jLabel5.setText(t.format(d));
                }*/
                
            }catch(Exception e){
                JOptionPane.showMessageDialog(null, e);
                
            }
            
            //emp = empID;
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jTextFieldEmpID = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jTextFieldFName = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextFieldLName = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jTextFieldNIC = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTextAreaAddress = new javax.swing.JTextArea();
        jLabel7 = new javax.swing.JLabel();
        jTextFieldEmail = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jTextFieldPhone = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        jTextFieldBarcode = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        jTextField8 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jLabelError = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Update Employee");

        jPanel1.setBackground(new java.awt.Color(153, 153, 255));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Employee Update");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(140, 140, 140)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(140, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, 38, Short.MAX_VALUE)
                .addContainerGap())
        );

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel2.setText("Employee ID");

        jTextFieldEmpID.setEditable(false);
        jTextFieldEmpID.setBackground(new java.awt.Color(255, 255, 255));
        jTextFieldEmpID.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTextFieldEmpIDMouseClicked(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel3.setText("First Name");

        jTextFieldFName.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTextFieldFNameMouseClicked(evt);
            }
        });
        jTextFieldFName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextFieldFNameKeyReleased(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel4.setText("Last Name");

        jTextFieldLName.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTextFieldLNameMouseClicked(evt);
            }
        });
        jTextFieldLName.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldLNameActionPerformed(evt);
            }
        });
        jTextFieldLName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextFieldLNameKeyReleased(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel5.setText("NIC");

        jTextFieldNIC.setEditable(false);
        jTextFieldNIC.setBackground(new java.awt.Color(255, 255, 255));
        jTextFieldNIC.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTextFieldNICMouseClicked(evt);
            }
        });

        jLabel6.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel6.setText("Address");

        jTextAreaAddress.setColumns(20);
        jTextAreaAddress.setRows(5);
        jTextAreaAddress.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTextAreaAddressMouseClicked(evt);
            }
        });
        jTextAreaAddress.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextAreaAddressKeyReleased(evt);
            }
        });
        jScrollPane1.setViewportView(jTextAreaAddress);

        jLabel7.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel7.setText("Email");

        jTextFieldEmail.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTextFieldEmailMouseClicked(evt);
            }
        });
        jTextFieldEmail.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldEmailActionPerformed(evt);
            }
        });
        jTextFieldEmail.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextFieldEmailKeyReleased(evt);
            }
        });

        jLabel8.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel8.setText("Phone");

        jTextFieldPhone.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTextFieldPhoneMouseClicked(evt);
            }
        });
        jTextFieldPhone.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextFieldPhoneKeyReleased(evt);
            }
        });

        jLabel9.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel9.setText("Barcode");

        jTextFieldBarcode.setEditable(false);
        jTextFieldBarcode.setBackground(new java.awt.Color(255, 255, 255));
        jTextFieldBarcode.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTextFieldBarcodeMouseClicked(evt);
            }
        });

        jLabel10.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel10.setText("Profile_Pic");

        jButton1.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jButton1.setForeground(new java.awt.Color(0, 0, 204));
        jButton1.setText("Update");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabelError.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabelError.setForeground(new java.awt.Color(204, 0, 0));
        jLabelError.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jTextFieldEmpID, javax.swing.GroupLayout.DEFAULT_SIZE, 150, Short.MAX_VALUE)
                            .addComponent(jTextFieldFName)
                            .addComponent(jTextFieldLName)
                            .addComponent(jTextFieldNIC)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel10, javax.swing.GroupLayout.DEFAULT_SIZE, 69, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jTextFieldEmail, javax.swing.GroupLayout.DEFAULT_SIZE, 150, Short.MAX_VALUE)
                            .addComponent(jTextFieldPhone)
                            .addComponent(jTextFieldBarcode)
                            .addComponent(jTextField8)))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(52, 52, 52)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabelError, javax.swing.GroupLayout.PREFERRED_SIZE, 400, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextFieldEmpID, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextFieldEmail, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextFieldFName, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextFieldPhone, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextFieldLName, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextFieldBarcode, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextFieldNIC, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextField8, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(jLabelError, javax.swing.GroupLayout.DEFAULT_SIZE, 28, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextFieldLNameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldLNameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldLNameActionPerformed

    private void jTextFieldEmailActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldEmailActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldEmailActionPerformed

    private void jTextFieldEmpIDMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldEmpIDMouseClicked
        // TODO add your handling code here:
        jLabelError.setText("Can't Edit Employee ID !!!");
    }//GEN-LAST:event_jTextFieldEmpIDMouseClicked

    private void jTextFieldNICMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldNICMouseClicked
        // TODO add your handling code here:
        jLabelError.setText("Can't Edit NIC !!!");
    }//GEN-LAST:event_jTextFieldNICMouseClicked

    private void jTextFieldBarcodeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldBarcodeMouseClicked
        // TODO add your handling code here:
        jLabelError.setText("Can't Edit Barcode Number !!!");
    }//GEN-LAST:event_jTextFieldBarcodeMouseClicked

    private void jTextFieldFNameMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldFNameMouseClicked
        // TODO add your handling code here:
        jLabelError.setText(null);
    }//GEN-LAST:event_jTextFieldFNameMouseClicked

    private void jTextFieldLNameMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldLNameMouseClicked
        // TODO add your handling code here:
        jLabelError.setText(null);
    }//GEN-LAST:event_jTextFieldLNameMouseClicked

    private void jTextAreaAddressMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextAreaAddressMouseClicked
        // TODO add your handling code here:
        jLabelError.setText(null);
    }//GEN-LAST:event_jTextAreaAddressMouseClicked

    private void jTextFieldEmailMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldEmailMouseClicked
        // TODO add your handling code here:
        jLabelError.setText(null);
    }//GEN-LAST:event_jTextFieldEmailMouseClicked

    private void jTextFieldPhoneMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldPhoneMouseClicked
        // TODO add your handling code here:
        jLabelError.setText(null);
    }//GEN-LAST:event_jTextFieldPhoneMouseClicked

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:

        //int nic = 0;
        int phn = 0;
	int crct = 0;
        
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        
        if(validateTF()){
        if(!FNameValidate() && !LNameValidate() && !AddressValidate() && !EmailValidate() && !PhoneValidate()){

            /*try {
                ResultSet rs = Database.getData("select NIC,Phone from employee");
                while (rs.next()) {

                     if (rs.getString("Phone").equals(jTextFieldPhone.getText())) {

                        phn += 0;
                    
                    } else {
                        crct += 0;
                    }

                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        //String rp = path.replace('\\', '/');

            if (phn > 0) {
                //JOptionPane.showMessageDialog(null, "This Phone Number has Already been registerd !");

            } else if (crct == 0) {*/

                try {
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehiclesalesmanagement", "root", "");
                
                    
                            String sql="UPDATE employee set EID='"+jTextFieldEmpID.getText()+"',First_name='"+jTextFieldFName.getText()+"',Last_name='"+jTextFieldLName.getText()+"',NIC='"+jTextFieldNIC.getText()+"',Address='"+jTextAreaAddress.getText()+"',Email='"+jTextFieldEmail.getText()+"',Phone='"+jTextFieldPhone.getText()+"',Barcode='"+jTextFieldBarcode.getText()+"' where EID='"+empID+"'";
                             ps=conn.prepareStatement(sql);
                             ps.execute();
                             JOptionPane.showMessageDialog(null,"Updated Successfully");
                }
                catch(Exception e){
                        JOptionPane.showMessageDialog(null,e);
                }
                
                
                
                    
				/*Database.setData("update employee(EID,First_name,Last_name,NIC,Address,Email,Barcode,Phone) values('"+jTextFieldEmpID.getText()+"','"+jTextFieldFName.getText()+"','"+jTextFieldLName.getText()+"','"+jTextFieldNIC.getText()+"','"+jTextAreaAddress.getText()+"','"+jTextFieldEmail.getText()+"','"+jTextFieldEmail.getText()+"','"+jTextFieldPhone.getText()+"') where EID='"+jTextFieldEmpID.getText()+"'");
				JOptionPane.showMessageDialog(null,"Employee success fully Updated");
			
				jTextFieldFName.setText(null);
				jTextFieldLName.setText(null);
				jTextFieldNIC.setText(null);
				jTextAreaAddress.setText(null);
				jTextFieldEmail.setText(null);
				jTextFieldPhone.setText(null);
				//jTextFieldFName.setText(null);
                                //jLabelError.setText(null);
			
                } catch (Exception e) {
                    e.printStackTrace();
                }*/

            /*} else {

            }*/
        
        
    }                                          
    }

    }//GEN-LAST:event_jButton1ActionPerformed

    private void jTextFieldFNameKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldFNameKeyReleased
        // TODO add your handling code here:

        FNameValidate();

    }//GEN-LAST:event_jTextFieldFNameKeyReleased

    private void jTextFieldLNameKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldLNameKeyReleased
        // TODO add your handling code here:

        LNameValidate();

    }//GEN-LAST:event_jTextFieldLNameKeyReleased

    private void jTextAreaAddressKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextAreaAddressKeyReleased
        // TODO add your handling code here:

        AddressValidate();

    }//GEN-LAST:event_jTextAreaAddressKeyReleased

    private void jTextFieldEmailKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldEmailKeyReleased
        // TODO add your handling code here:

        EmailValidate();

    }//GEN-LAST:event_jTextFieldEmailKeyReleased

    private void jTextFieldPhoneKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPhoneKeyReleased
        // TODO add your handling code here:

        PhoneValidate();

    }//GEN-LAST:event_jTextFieldPhoneKeyReleased

    
    
    public boolean FNameValidate(){
        
        String PATTERN = "^[a-zA-Z]{0,30}$";
        Pattern patt = Pattern.compile(PATTERN);
        Matcher match = patt.matcher(jTextFieldFName.getText());
        
        if(!match.matches()){
            jLabelError.setText(" Name is Incorrect! Use upper or lower case letters");
            return true;
        }
        else{
            jLabelError.setText(null);
            return false;
        }
    }
    public boolean LNameValidate(){
        
        String PATTERN = "^[a-zA-Z]{0,30}$";
        Pattern patt = Pattern.compile(PATTERN);
        Matcher match = patt.matcher(jTextFieldLName.getText());
        
        if(!match.matches()){
            jLabelError.setText(" Name is Incorrect! Use upper or lower case letters");
            return true;
        }
        else{
            jLabelError.setText(null);
            return false;
        }
    }
    /*public boolean NICValidate(){
        
        String PATTERN = "^[0-9]{9}V$";
        Pattern patt = Pattern.compile(PATTERN);
        Matcher match = patt.matcher(jTextFieldNIC.getText());
        
        if(!match.matches()){
            jLabelError.setText(" NIC is Incorrect!");
            return true;
        }
        else{
            jLabelError.setText(null);
            return false;
        }
    }*/
    public boolean AddressValidate(){
        
        String PATTERN = "^[a-zA-Z0-9/,]{0,100}$";
        Pattern patt = Pattern.compile(PATTERN);
        Matcher match = patt.matcher(jTextAreaAddress.getText());
        
        if(!match.matches()){
            jLabelError.setText(" Address is Incorrect!");
            return true;
        }
        else{
            jLabelError.setText(null);
            return false;
        }
    }
    public boolean EmailValidate(){
        
        String PATTERN = "^[a-zA-Z0-9]{0,30}@[a-zA-Z]{0,30}[.][a-z]{0,10}$";
        Pattern patt = Pattern.compile(PATTERN);
        Matcher match = patt.matcher(jTextFieldEmail.getText());
        
        if(!match.matches()){
            jLabelError.setText(" Email is Incorrect!");
            return true;
        }
        else{
            jLabelError.setText(null);
            return false;
        }
    }
    public boolean PhoneValidate(){
        
        String PATTERN = "^[0-9]{10}$";
        Pattern patt = Pattern.compile(PATTERN);
        Matcher match = patt.matcher(jTextFieldPhone.getText());
        
        if(!match.matches()){
            jLabelError.setText(" Phone Number is Incorrect! Should have ten digits");
            return true;
        }
        else{
            jLabelError.setText(null);
            return false;
        }
    }
    
    
    public boolean validateTF()
    {
        if(jTextFieldFName.getText().equalsIgnoreCase(""))
        {
            JOptionPane.showMessageDialog(null, "Name is Mandotary"); 
            return false;
        }
       
        /*else if(jTextFieldNIC.getText().equalsIgnoreCase(""))
        {
             JOptionPane.showMessageDialog(null, "NIC is Mandotary"); 
            return false;
        }*/
        else if(jTextAreaAddress.getText().equalsIgnoreCase("")) 
        {
             JOptionPane.showMessageDialog(null, "Address is Mandotary"); 
            return false;
        }
        else if(jTextFieldPhone.getText().equalsIgnoreCase("") )   
        {
             JOptionPane.showMessageDialog(null, "Phone number is Mandotary"); 
            return false;
        }
        else
        {
            try {
                InternetAddress emailAdd = new InternetAddress(jTextFieldEmail.getText());
                emailAdd.validate();
                
            } catch (AddressException ex) 
            {
                JOptionPane.showMessageDialog(null, "Enter valid email "); 
                return false;
            }
        }
        return true;
    }
    
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
            java.util.logging.Logger.getLogger(Employee_Update.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Employee_Update.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Employee_Update.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Employee_Update.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        
        /* Create and display the form */
        //private static final String emp = empID;
        
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Employee_Update(empID).setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JLabel jLabelError;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea jTextAreaAddress;
    private javax.swing.JTextField jTextField8;
    private javax.swing.JTextField jTextFieldBarcode;
    private javax.swing.JTextField jTextFieldEmail;
    private javax.swing.JTextField jTextFieldEmpID;
    private javax.swing.JTextField jTextFieldFName;
    private javax.swing.JTextField jTextFieldLName;
    private javax.swing.JTextField jTextFieldNIC;
    private javax.swing.JTextField jTextFieldPhone;
    // End of variables declaration//GEN-END:variables
}