# SQL_Task4
DATABASE BACKUP AND RECOVERY - DEMONSTRATE HOW TO BACK UP A DATABASE AND RESTORE IT IN CASE OF FAILURE.
<BR>  
<H1>SQL Server — BACKUP and RESTORE Using SSMS</H1>
<H2>STEP 1: BACK UP a Database in SSMS</H2>
<H3>A. Using GUI:</H3>
<OL>
  <LI>Open SQL Server Management Studio (SSMS)</LI>
  <LI>Connect to your SQL Server instance</LI>
  <LI>In Object Explorer, expand Databases</LI>
  <LI>Right-click your database → Click Tasks → Back Up...</LI>
</OL>
<H3>B. Configure Backup:</H3>
<UL>
  <LI>Backup type: <B>Full</B></LI>
  <LI>Backup component: <B>Database</B></LI>
  <LI>Destination:</LI>
  <UL>
    <LI>Click Remove, then Add</LI>
    <LI>Choose a location, e.g., C:\Backups\mydb.bak</LI>
  </UL>
</UL>
<H3>C. Click OK to run the backup</H3>
✅ You should get a success message:
<B>"The backup of database 'YourDB' completed successfully."</B>
<BR>
<H2>STEP 2: RESTORE a Database in SSMS</H2>
<H3>A. Using GUI:</H3>
<OL>
  <LI>Right-click Databases → Click Restore Database</LI>
  <LI>Choose:</LI>
  <UL>
    <LI>Source: Device</LI>
    <LI>Click Add → Select the .bak file you saved</LI>
  </UL>
  <LI>Under Destination, choose a name for the restored DB (or same as before)</LI>
</OL>
<H3>B. Options:</H3>
<UL>
  <LI>Go to the Files tab if you want to rename .mdf and .ldf paths</LI>
  <LI>Under Options, check Overwrite the existing database (WITH REPLACE) if restoring over the same name</LI>
</UL>
<H3>C. Click OK to restore</H3>
✅ You should see:
<B>"Database 'YourDB' restored successfully."</B>


