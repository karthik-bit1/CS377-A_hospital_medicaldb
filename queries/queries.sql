SELECT * FROM patient;
SELECT * FROM doctor;
SELECT * FROM appointments;
SELECT * FROM med_test;
SELECT * FROM medicine_price;
SELECT * FROM prescriptions;
SELECT * FROM prescription_medicine;

SELECT p.p_name, d.d_name, a.ap_date, a.ap_time
FROM appointments a
JOIN patient p ON p.p_id = a.p_id
JOIN doctor d ON d.d_id = a.d_id
ORDER BY p.p_name;

SELECT * FROM get_doctor_appointments(1);
SELECT * FROM get_patient_medical_history(1);
SELECT * FROM get_patient_info(1);
SELECT * FROM scan_reports('Blood Test', 'negative') ORDER BY mt_id; # Assuming there are records in med_test with mt_name = 'Blood Test' and mt_result = 'negative'
SELECT * FROM get_prescription_details(1); # Assuming pr_id = 1 exists in prescriptions table