package com.im.jdgy;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_main);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
        Button iosv14 =findViewById(R.id.iosv14);
        Button pe =findViewById(R.id.pe);
        Button emui =findViewById(R.id.emui);
        Button miui =findViewById(R.id.miui);
        Button color =findViewById(R.id.color);
        Button magic =findViewById(R.id.magic);
        Button iqoo =findViewById(R.id.iqoo);
        Button flyme =findViewById(R.id.flyme);
        Button win10=findViewById(R.id.win10);
        Button zui=findViewById(R.id.zui);
        TextView gd =findViewById(R.id.gd);

        iosv14.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //Toast.makeText(MainActivity.this,"IOS V14",Toast.LENGTH_LONG).show();
                Intent intent=new Intent(MainActivity.this, ios.class);

                startActivity(intent);
            }
        });
        miui.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //Toast.makeText(MainActivity.this,"IOS V14",Toast.LENGTH_LONG).show();
                Intent intent=new Intent(MainActivity.this, miui.class);

                startActivity(intent);
            }
        });
        color.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //Toast.makeText(MainActivity.this,"IOS V14",Toast.LENGTH_LONG).show();
                Intent intent=new Intent(MainActivity.this, color.class);
                startActivity(intent);
            }
        });
        magic.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //Toast.makeText(MainActivity.this,"IOS V14",Toast.LENGTH_LONG).show();
                Intent intent=new Intent(MainActivity.this, magic.class);
                startActivity(intent);
            }
        });
        flyme.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //Toast.makeText(MainActivity.this,"IOS V14",Toast.LENGTH_LONG).show();
                Intent intent=new Intent(MainActivity.this, flyme.class);
                startActivity(intent);
            }
        });
        win10.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //Toast.makeText(MainActivity.this,"IOS V14",Toast.LENGTH_LONG).show();
                Intent intent=new Intent(MainActivity.this, win10.class);
                startActivity(intent);
            }
        });
        emui.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //Toast.makeText(MainActivity.this,"IOS V14",Toast.LENGTH_LONG).show();
                Intent intent=new Intent(MainActivity.this, emui.class);
                startActivity(intent);
            }
        });
        zui.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //Toast.makeText(MainActivity.this,"IOS V14",Toast.LENGTH_LONG).show();
                Intent intent=new Intent(MainActivity.this, zui.class);
                startActivity(intent);
            }
        });
        iqoo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //Toast.makeText(MainActivity.this,"IOS V14",Toast.LENGTH_LONG).show();
                Intent intent=new Intent(MainActivity.this, iqoo.class);
                startActivity(intent);
            }
        });
        pe.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //Toast.makeText(MainActivity.this,"IOS V14",Toast.LENGTH_LONG).show();
                Intent intent=new Intent(MainActivity.this, pe.class);
                startActivity(intent);
            }
        });
        gd.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //Toast.makeText(MainActivity.this,"IOS V14",Toast.LENGTH_LONG).show();
                Intent intent=new Intent(MainActivity.this, gd.class);
                startActivity(intent);
            }
        });
    }
}