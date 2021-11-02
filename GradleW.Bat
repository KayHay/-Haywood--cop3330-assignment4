** Assignment 4 **
 
 ** To Do List **

<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
public static final int REQUEST_WRITE_STORAGE = 100; 

       private requestPermission(Activity context) {
           boolean hasPermission = (ContextCompat.checkSelfPermission(context, Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED);
           
           if (!hasPermission) {
              ActivityCompat.requestPermissions(context,
                 new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE},
               REQUEST_WRITE_STORAGE);
           } else {
             String path = Environment.getExternalStorageDirectory().getAbsolutePath() + "/new_folder";
             File storageDir = new File(path);
             if (!storageDir.exists() && !storageDir.mkdirs()) {
             }
             
            ReturnRequestPermission e =new ReturnRequestPermission();  
           }
