package com.lsec.core.frame.camera5;

import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.util.Size;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import com.lsec.core.frame.camera.MyCamera;
import com.lsec.core.frame.camera.MyCameraUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class MyCamera5 {
    public Point extraPreviewSize;
    private Handler mBackgroundHandler;
    private HandlerThread mBackgroundThread;
    public MyCamera5Interface mCamera5Interface;
    private CameraDevice mCameraDevice;
    private CameraManager mCameraManager;
    private CameraCaptureSession mCaptureSession;
    private ImageReader mImageReader;
    private ImageReader mImageReaderExtra;
    private Size mPreviewSize;
    private String mSpecificCameraId;
    private SurfaceHolder mSurfaceHolder;
    private SurfaceTexture mSurfaceTexture;
    private TextureView mTexture;
    public Point maxPreviewSize;
    public Point minPreviewSize;
    public Point previewViewSize;
    public Point specificPreviewSize;
    public static int mFormat = 35;
    public static int mMaxImages = 2;
    public static MyCamera5 mCameraInst = null;
    public boolean bShutDown = false;
    private Semaphore mCameraOpenCloseLock = new Semaphore(1);
    public byte[] mHeader = new byte[20];
    List<Surface> mTargetSurfaces = new ArrayList();
    private CameraDevice.StateCallback mDeviceStateCallback = new CameraDevice.StateCallback() { // from class: com.lsec.core.frame.camera5.MyCamera5.1
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            Log.d("HJT", "MyCamera5  onOpened(CameraDevice cameraDevice)  Camera ID: " + MyCamera5.this.mSpecificCameraId);
            MyCamera5.this.mCameraOpenCloseLock.release();
            MyCamera5.this.mCameraDevice = cameraDevice;
            MyCamera5.this.configure();
            if (MyCamera5.this.mCamera5Interface != null) {
                MyCamera5.this.mCamera5Interface.onOpened5();
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            Log.d("HJT", "MyCamera5  onDisconnected(CameraDevice cameraDevice)  Camera ID: " + MyCamera5.this.mSpecificCameraId);
            MyCamera5.this.mCameraOpenCloseLock.release();
            cameraDevice.close();
            MyCamera5.this.mCameraDevice = null;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int error) {
            Log.d("HJT", "MyCamera5  onError(CameraDevice cameraDevice, error)  Camera ID: " + MyCamera5.this.mSpecificCameraId + " error: " + error);
            MyCamera5.this.mCameraOpenCloseLock.release();
            cameraDevice.close();
            MyCamera5.this.mCameraDevice = null;
        }
    };
    private final CameraCaptureSession.StateCallback mCaptureStateCallback = new CameraCaptureSession.StateCallback() { // from class: com.lsec.core.frame.camera5.MyCamera5.2
        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            try {
                if (MyCamera5.this.mCameraDevice != null) {
                    MyCamera5.this.mCaptureSession = cameraCaptureSession;
                    if (MyCamera5.this.mCaptureSession != null) {
                        CaptureRequest.Builder builder = MyCamera5.this.getRequestBuilder(1);
                        for (Surface targetSurface : MyCamera5.this.mTargetSurfaces) {
                            if (targetSurface != null) {
                                Log.d("HJT", "!=null:");
                                builder.addTarget(targetSurface);
                            } else {
                                return;
                            }
                        }
                        Log.d("HJT", "mTargetSurfaces:" + MyCamera5.this.mTargetSurfaces.size());
                        MyCamera5.this.mCaptureSession.setRepeatingRequest(builder.build(), null, MyCamera5.this.mBackgroundHandler);
                    }
                }
            } catch (Exception e) {
                Log.d("HJT", "e:" + e.toString());
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
        }
    };
    int i = 0;
    Runnable_setPreviewSurfHolder5 runnable_setPreviewSurfHolder = null;
    Runnable_setPreviewSurfTexture5 runnable_setPreviewSurfTexture = null;

    private MyCamera5() {
    }

    public static synchronized MyCamera5 getInstance() {
        if (mCameraInst == null) {
            mCameraInst = new MyCamera5();
        }
        return mCameraInst;
    }

    public void setCamera5Interface(MyCamera5Interface camera5Interface) {
        this.mCamera5Interface = camera5Interface;
    }

    public synchronized void start(String specificCameraId, SurfaceTexture surfaceTexture) {
        Log.d("HJT", "MyCamera5  Camera ID: " + specificCameraId + "  mCameraDevice : " + this.mCameraDevice);
        if (this.mCameraDevice == null) {
            startBackgroundThread();
            open(specificCameraId, surfaceTexture);
        }
    }

    public synchronized void start(String specificCameraId, TextureView texture) {
        Log.d("HJT", "MyCamera5  Camera ID: " + specificCameraId + "  mCameraDevice : " + this.mCameraDevice);
        if (this.mCameraDevice == null) {
            startBackgroundThread();
            open(specificCameraId, texture);
        }
    }

    public synchronized void start(String specificCameraId, SurfaceHolder surfaceHolder) {
        if (this.mCameraDevice == null) {
            startBackgroundThread();
            open(specificCameraId, surfaceHolder);
        }
    }

    public synchronized void stop() {
        this.mCamera5Interface = null;
        if (this.mCameraDevice != null) {
            closeCamera();
            stopBackgroundThread();
        }
    }

    public void open(String specificCameraId, SurfaceTexture surfaceTexture) {
        MyCamera.setSystemProp2();
        this.mSpecificCameraId = specificCameraId;
        this.mSurfaceTexture = surfaceTexture;
        this.mSurfaceHolder = null;
        this.mTexture = null;
        try {
            if (this.mCameraOpenCloseLock.tryAcquire(2500L, TimeUnit.MILLISECONDS)) {
                Log.d("HJT", "MyCamera5  open(cameraid, SurfaceTexture)  Camera ID: " + specificCameraId);
                this.mCameraManager.openCamera(this.mSpecificCameraId, this.mDeviceStateCallback, this.mBackgroundHandler);
            }
        } catch (Exception e) {
            Log.d("HJT", "MyCamera5  open(cameraid, SurfaceTexture)  Camera ID: " + specificCameraId + " Exception!!");
        }
    }

    public void open(String specificCameraId, TextureView texture) {
        MyCamera.setSystemProp2();
        this.mSpecificCameraId = specificCameraId;
        this.mTexture = texture;
        this.mSurfaceTexture = null;
        this.mSurfaceHolder = null;
        try {
            if (this.mCameraOpenCloseLock.tryAcquire(2500L, TimeUnit.MILLISECONDS)) {
                Log.d("HJT", "MyCamera5  open(cameraid, SurfaceTexture)  Camera ID: " + specificCameraId);
                this.mCameraManager.openCamera(this.mSpecificCameraId, this.mDeviceStateCallback, this.mBackgroundHandler);
            }
        } catch (Exception e) {
            Log.d("HJT", "MyCamera5  open(cameraid, SurfaceTexture)  Camera ID: " + specificCameraId + " Exception!!");
        }
    }

    public void open(String specificCameraId, SurfaceHolder surfaceHolder) {
        MyCamera.setSystemProp2();
        this.mSpecificCameraId = specificCameraId;
        this.mSurfaceHolder = surfaceHolder;
        this.mSurfaceTexture = null;
        this.mTexture = null;
        try {
            if (this.mCameraOpenCloseLock.tryAcquire(2500L, TimeUnit.MILLISECONDS)) {
                Log.d("HJT", "MyCamera5  open(cameraid, SurfaceHolder)  Camera ID: " + specificCameraId);
                this.mCameraManager.openCamera(this.mSpecificCameraId, this.mDeviceStateCallback, this.mBackgroundHandler);
            }
        } catch (Exception e) {
            Log.d("HJT", "MyCamera5  open(cameraid, SurfaceHolder)  Camera ID: " + specificCameraId + " Exception!!");
        }
    }

    private void closeCamera() {
        Log.d("HJT", "MyCamera5  closeCamera  Camera ID: " + this.mSpecificCameraId);
        try {
            this.mCameraOpenCloseLock.acquire();
            if (this.mCaptureSession != null) {
                this.mCaptureSession.close();
                this.mCaptureSession = null;
            }
            if (this.mCameraDevice != null) {
                this.mCameraDevice.close();
                this.mCameraDevice = null;
            }
            if (this.mImageReader != null) {
                this.mImageReader.close();
                this.mImageReader = null;
            }
            if (this.mImageReaderExtra != null) {
                this.mImageReaderExtra.close();
                this.mImageReaderExtra = null;
            }
        } catch (Exception e) {
        } finally {
            this.mCameraOpenCloseLock.release();
        }
    }

    private void startBackgroundThread() {
        this.mBackgroundThread = new HandlerThread("Camera5Background");
        this.mBackgroundThread.start();
        this.mBackgroundHandler = new Handler(this.mBackgroundThread.getLooper());
    }

    private void stopBackgroundThread() {
        this.mBackgroundThread.quitSafely();
        try {
            this.mBackgroundThread.join();
            this.mBackgroundThread = null;
            this.mBackgroundHandler = null;
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void configure() {
        try {
            int[] size = MyCameraUtil.getSystemPropSize2();
            this.mPreviewSize = new Size(size[0], size[1]);
            this.mTargetSurfaces.clear();
            Surface surface = null;
            if (this.mSurfaceTexture != null) {
                this.mSurfaceTexture.setDefaultBufferSize(this.mPreviewSize.getWidth(), this.mPreviewSize.getHeight());
                surface = new Surface(this.mSurfaceTexture);
            }
            if (surface != null) {
                this.mTargetSurfaces.add(surface);
            }
            if (MyCameraUtil.bAddImageReader) {
                this.mImageReader = ImageReader.newInstance(this.mPreviewSize.getWidth(), this.mPreviewSize.getHeight(), mFormat, mMaxImages);
                this.mImageReader.setOnImageAvailableListener(new OnImageAvailableListenerImpl(this, null), this.mBackgroundHandler);
                if (this.mImageReader.getSurface() != null) {
                    this.mTargetSurfaces.add(this.mImageReader.getSurface());
                }
                if (this.extraPreviewSize != null) {
                    this.mImageReaderExtra = ImageReader.newInstance(this.extraPreviewSize.x, this.extraPreviewSize.y, mFormat, 1);
                    this.mImageReaderExtra.setOnImageAvailableListener(new OnImageAvailableListenerImplExtra(this, null), this.mBackgroundHandler);
                    if (this.mImageReaderExtra.getSurface() != null) {
                        this.mTargetSurfaces.add(this.mImageReaderExtra.getSurface());
                    }
                }
            }
            if (this.mTargetSurfaces.size() > 0) {
                this.mCameraDevice.createCaptureSession(this.mTargetSurfaces, this.mCaptureStateCallback, this.mBackgroundHandler);
            } else if (this.mCaptureSession != null) {
                this.mCaptureSession.close();
                this.mCaptureSession = null;
            }
        } catch (Exception e) {
        }
    }

    public CaptureRequest.Builder getRequestBuilder(int template) {
        CaptureRequest.Builder request = null;
        if (this.mCameraDevice == null) {
            return null;
        }
        try {
            request = this.mCameraDevice.createCaptureRequest(template);
            request.set(CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE, 1);
            return request;
        } catch (Exception e) {
            return request;
        }
    }

    private class OnImageAvailableListenerImpl implements ImageReader.OnImageAvailableListener {
        private OnImageAvailableListenerImpl() {
        }

        /* synthetic */ OnImageAvailableListenerImpl(MyCamera5 myCamera5, OnImageAvailableListenerImpl onImageAvailableListenerImpl) {
            this();
        }

        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader reader) {
            if (MyCamera5.this.mCamera5Interface != null) {
                MyCamera5.this.mCamera5Interface.onImage5Available(reader);
            }
        }
    }

    private class OnImageAvailableListenerImplExtra implements ImageReader.OnImageAvailableListener {
        private OnImageAvailableListenerImplExtra() {
        }

        /* synthetic */ OnImageAvailableListenerImplExtra(MyCamera5 myCamera5, OnImageAvailableListenerImplExtra onImageAvailableListenerImplExtra) {
            this();
        }

        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader reader) {
            if (MyCamera5.this.mCamera5Interface != null) {
                MyCamera5.this.mCamera5Interface.onImage5AvailableExtra(reader);
            }
        }
    }

    public boolean isCameraOpen() {
        return this.mCameraDevice != null;
    }

    public void shutDown() {
        this.bShutDown = true;
        stop();
    }

    public void setMaxImages(int max) {
        mMaxImages = max;
    }

    public void setPreview(CameraManager cameraManager, SurfaceHolder holder, int idVideo, int iDegree) {
        this.mCameraManager = cameraManager;
        Log.d("HJT", "setPreview5:" + idVideo);
        MyCameraUtil.idVideo = idVideo;
        MyCameraUtil.iDegree = iDegree;
        this.bShutDown = false;
        try {
            if (this.runnable_setPreviewSurfHolder != null) {
                this.runnable_setPreviewSurfHolder.stopRun();
            }
            this.runnable_setPreviewSurfHolder = new Runnable_setPreviewSurfHolder5(holder);
            this.runnable_setPreviewSurfHolder.run();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setPreview(CameraManager cameraManager, SurfaceTexture surface, int idVideo, int iDegree) {
        this.mCameraManager = cameraManager;
        Log.d("HJT", "setPreview5:" + idVideo);
        MyCameraUtil.idVideo = idVideo;
        MyCameraUtil.iDegree = iDegree;
        this.bShutDown = false;
        try {
            if (this.runnable_setPreviewSurfTexture != null) {
                this.runnable_setPreviewSurfTexture.stopRun();
            }
            this.runnable_setPreviewSurfTexture = new Runnable_setPreviewSurfTexture5(surface);
            this.runnable_setPreviewSurfTexture.run();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setPreview(CameraManager cameraManager, TextureView texture, int idVideo, int iDegree) {
        this.mCameraManager = cameraManager;
        Log.d("HJT", "setPreview5:" + idVideo);
        MyCameraUtil.idVideo = idVideo;
        MyCameraUtil.iDegree = iDegree;
        this.bShutDown = false;
        try {
            if (this.runnable_setPreviewSurfTexture != null) {
                this.runnable_setPreviewSurfTexture.stopRun();
            }
            this.runnable_setPreviewSurfTexture = new Runnable_setPreviewSurfTexture5(texture);
            this.runnable_setPreviewSurfTexture.run();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setPreviewSize(Point val) {
        this.specificPreviewSize = val;
    }

    public void setPreviewSizeExtra(Point val) {
        this.extraPreviewSize = val;
    }

    public void setMaxPreviewSize(Point val) {
        this.maxPreviewSize = val;
    }

    public void setMinPreviewSize(Point val) {
        this.minPreviewSize = val;
    }
}
