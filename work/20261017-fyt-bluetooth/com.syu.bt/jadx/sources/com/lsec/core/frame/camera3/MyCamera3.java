package com.lsec.core.frame.camera3;

import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.MemoryFile;
import android.os.ParcelFileDescriptor;
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
public class MyCamera3 {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static MyCamera3 mCameraInst;
    public static int mFormat;
    public static int mMaxImages;
    public Point extraPreviewSize;
    private Handler mBackgroundHandler;
    private HandlerThread mBackgroundThread;
    public MyCamera3Interface mCamera3Interface;
    private CameraDevice mCameraDevice;
    private CameraManager mCameraManager;
    private CameraCaptureSession mCaptureSession;
    private ImageReader mImageReader;
    private ImageReader mImageReaderExtra;
    public MemoryFile mMemoryFile;
    public ParcelFileDescriptor mParcelFileDescriptor;
    private Size mPreviewSize;
    private String mSpecificCameraId;
    private Surface mSurface;
    private SurfaceHolder mSurfaceHolder;
    private SurfaceTexture mSurfaceTexture;
    private TextureView mTexture;
    public Point maxPreviewSize;
    public Point minPreviewSize;
    public Point previewViewSize;
    public Point specificPreviewSize;
    public boolean bShutDown = false;
    private Semaphore mCameraOpenCloseLock = new Semaphore(1);
    public boolean bShareMemory2Other = false;
    public byte[] mHeader = new byte[20];
    List<Surface> mTargetSurfaces = new ArrayList();
    private CameraDevice.StateCallback mDeviceStateCallback = new CameraDevice.StateCallback() { // from class: com.lsec.core.frame.camera3.MyCamera3.1
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            Log.d("HJT", "MyCamera3  onOpened(CameraDevice cameraDevice)  Camera ID: " + MyCamera3.this.mSpecificCameraId);
            MyCamera3.this.mCameraOpenCloseLock.release();
            MyCamera3.this.mCameraDevice = cameraDevice;
            MyCamera3.this.configure();
            if (MyCamera3.this.mCamera3Interface != null) {
                MyCamera3.this.mCamera3Interface.onOpenedDoubleCamera();
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            Log.d("HJT", "MyCamera3  onDisconnected(CameraDevice cameraDevice)  Camera ID: " + MyCamera3.this.mSpecificCameraId);
            MyCamera3.this.mCameraOpenCloseLock.release();
            cameraDevice.close();
            MyCamera3.this.mCameraDevice = null;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int error) {
            Log.d("HJT", "MyCamera3  onError(CameraDevice cameraDevice, error)  Camera ID: " + MyCamera3.this.mSpecificCameraId + " error: " + error);
            MyCamera3.this.mCameraOpenCloseLock.release();
            cameraDevice.close();
            MyCamera3.this.mCameraDevice = null;
        }
    };
    private final CameraCaptureSession.StateCallback mCaptureStateCallback = new CameraCaptureSession.StateCallback() { // from class: com.lsec.core.frame.camera3.MyCamera3.2
        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            try {
                if (MyCamera3.this.mCameraDevice != null) {
                    MyCamera3.this.mCaptureSession = cameraCaptureSession;
                    if (MyCamera3.this.mCaptureSession != null) {
                        CaptureRequest.Builder builder = MyCamera3.this.getRequestBuilder(1);
                        for (Surface targetSurface : MyCamera3.this.mTargetSurfaces) {
                            if (targetSurface != null) {
                                Log.d("HJT", "!=null:");
                                builder.addTarget(targetSurface);
                            } else {
                                return;
                            }
                        }
                        Log.d("HJT", "mTargetSurfaces:" + MyCamera3.this.mTargetSurfaces.size());
                        MyCamera3.this.mCaptureSession.setRepeatingRequest(builder.build(), null, MyCamera3.this.mBackgroundHandler);
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
    Runnable_setPreviewSurfHolder3 runnable_setPreviewSurfHolder = null;
    Runnable_setPreviewSurfTexture3 runnable_setPreviewSurfTexture = null;

    static {
        $assertionsDisabled = !MyCamera3.class.desiredAssertionStatus();
        mFormat = 35;
        mMaxImages = 2;
        mCameraInst = null;
    }

    private MyCamera3() {
    }

    public static synchronized MyCamera3 getInstance() {
        if (mCameraInst == null) {
            mCameraInst = new MyCamera3();
        }
        return mCameraInst;
    }

    public void setCamera3Interface(MyCamera3Interface camera3Interface) {
        this.mCamera3Interface = camera3Interface;
    }

    public synchronized void start(String specificCameraId, SurfaceTexture surfaceTexture) {
        Log.d("HJT", "MyCamera3  Camera ID: " + specificCameraId + "  mCameraDevice : " + this.mCameraDevice);
        if (this.mCameraDevice == null) {
            startBackgroundThread();
            open(specificCameraId, surfaceTexture);
        }
    }

    public synchronized void start(String specificCameraId, TextureView texture) {
        Log.d("HJT", "MyCamera3  Camera ID: " + specificCameraId + "  mCameraDevice : " + this.mCameraDevice);
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

    public synchronized void start(String specificCameraId, Surface surface) {
        Log.d("HJT", "MyCamera3  Camera ID: " + specificCameraId + "  mCameraDevice : " + this.mCameraDevice);
        if (this.mCameraDevice == null) {
            startBackgroundThread();
            open(specificCameraId, surface);
        }
    }

    public synchronized void stop() {
        this.mCamera3Interface = null;
        if (this.mCameraDevice != null) {
            closeCamera();
            stopBackgroundThread();
        }
    }

    public void open(String specificCameraId, TextureView texture) {
        MyCamera.setSystemProp2();
        this.mSpecificCameraId = specificCameraId;
        this.mTexture = texture;
        this.mSurfaceTexture = null;
        this.mSurfaceHolder = null;
        this.mSurface = null;
        try {
            if (this.mCameraOpenCloseLock.tryAcquire(2500L, TimeUnit.MILLISECONDS)) {
                Log.d("HJT", "MyCamera3  open(cameraid, SurfaceTexture)  Camera ID: " + specificCameraId);
                this.mCameraManager.openCamera(this.mSpecificCameraId, this.mDeviceStateCallback, this.mBackgroundHandler);
            }
        } catch (Exception e) {
            Log.d("HJT", "MyCamera3  open(cameraid, SurfaceTexture)  Camera ID: " + specificCameraId + " Exception!!");
        }
    }

    public void open(String specificCameraId, SurfaceTexture surfaceTexture) {
        MyCamera.setSystemProp2();
        this.mSpecificCameraId = specificCameraId;
        this.mSurfaceTexture = surfaceTexture;
        this.mSurfaceHolder = null;
        this.mTexture = null;
        this.mSurface = null;
        try {
            if (this.mCameraOpenCloseLock.tryAcquire(2500L, TimeUnit.MILLISECONDS)) {
                Log.d("HJT", "MyCamera3  open(cameraid, SurfaceTexture)  Camera ID: " + specificCameraId);
                this.mCameraManager.openCamera(this.mSpecificCameraId, this.mDeviceStateCallback, this.mBackgroundHandler);
            }
        } catch (Exception e) {
            Log.d("HJT", "MyCamera3  open(cameraid, SurfaceTexture)  Camera ID: " + specificCameraId + " Exception!!");
        }
    }

    public void open(String specificCameraId, SurfaceHolder surfaceHolder) {
        MyCamera.setSystemProp2();
        this.mSpecificCameraId = specificCameraId;
        this.mSurfaceHolder = surfaceHolder;
        this.mSurfaceTexture = null;
        this.mTexture = null;
        this.mSurface = null;
        try {
            if (this.mCameraOpenCloseLock.tryAcquire(2500L, TimeUnit.MILLISECONDS)) {
                Log.d("HJT", "MyCamera3  open(cameraid, SurfaceHolder)  Camera ID: " + specificCameraId);
                this.mCameraManager.openCamera(this.mSpecificCameraId, this.mDeviceStateCallback, this.mBackgroundHandler);
            }
        } catch (Exception e) {
            Log.d("HJT", "MyCamera3  open(cameraid, SurfaceHolder)  Camera ID: " + specificCameraId + " Exception!!");
        }
    }

    public void open(String specificCameraId, Surface surface) {
        MyCamera.setSystemProp2();
        this.mSpecificCameraId = specificCameraId;
        this.mSurface = surface;
        this.mSurfaceTexture = null;
        this.mSurfaceHolder = null;
        this.mTexture = null;
        try {
            if (this.mCameraOpenCloseLock.tryAcquire(2500L, TimeUnit.MILLISECONDS)) {
                Log.d("HJT", "MyCamera3  open(cameraid, SurfaceTexture)  Camera ID: " + specificCameraId);
                this.mCameraManager.openCamera(this.mSpecificCameraId, this.mDeviceStateCallback, this.mBackgroundHandler);
            }
        } catch (Exception e) {
            Log.d("HJT", "MyCamera3  open(cameraid, SurfaceTexture)  Camera ID: " + specificCameraId + " Exception!!");
        }
    }

    private void closeCamera() {
        Log.d("HJT", "MyCamera3  closeCamera  Camera ID: " + this.mSpecificCameraId);
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
        this.mBackgroundThread = new HandlerThread("Camera3Background");
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
            if (size[0] == 990) {
                size[0] = 960;
            }
            this.mPreviewSize = new Size(size[0], size[1]);
            this.mTargetSurfaces.clear();
            Surface surface = null;
            if (this.mSurfaceTexture != null) {
                this.mSurfaceTexture.setDefaultBufferSize(this.mPreviewSize.getWidth(), this.mPreviewSize.getHeight());
                surface = new Surface(this.mSurfaceTexture);
            } else if (this.mTexture != null) {
                SurfaceTexture texture = this.mTexture.getSurfaceTexture();
                if (!$assertionsDisabled && texture == null) {
                    throw new AssertionError();
                }
                texture.setDefaultBufferSize(this.mPreviewSize.getWidth(), this.mPreviewSize.getHeight());
                surface = new Surface(texture);
            } else if (this.mSurfaceHolder != null) {
                surface = this.mSurfaceHolder.getSurface();
            } else if (this.mSurface != null) {
                Log.d("HJT", "--------------add mSurface");
                this.mTargetSurfaces.add(this.mSurface);
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

        /* synthetic */ OnImageAvailableListenerImpl(MyCamera3 myCamera3, OnImageAvailableListenerImpl onImageAvailableListenerImpl) {
            this();
        }

        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader reader) {
            if (MyCamera3.this.mCamera3Interface != null) {
                MyCamera3.this.mCamera3Interface.onImageDoubleCameraAvailable(reader);
            }
        }
    }

    private class OnImageAvailableListenerImplExtra implements ImageReader.OnImageAvailableListener {
        private OnImageAvailableListenerImplExtra() {
        }

        /* synthetic */ OnImageAvailableListenerImplExtra(MyCamera3 myCamera3, OnImageAvailableListenerImplExtra onImageAvailableListenerImplExtra) {
            this();
        }

        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader reader) {
            if (MyCamera3.this.mCamera3Interface != null) {
                MyCamera3.this.mCamera3Interface.onImageDoubleCameraAvailableExtra(reader);
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
        Log.d("HJT", "setPreview2:" + idVideo);
        MyCameraUtil.idVideo = idVideo;
        MyCameraUtil.iDegree = iDegree;
        this.bShutDown = false;
        try {
            if (this.runnable_setPreviewSurfHolder != null) {
                this.runnable_setPreviewSurfHolder.stopRun();
            }
            this.runnable_setPreviewSurfHolder = new Runnable_setPreviewSurfHolder3(holder);
            this.runnable_setPreviewSurfHolder.run();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setPreview(CameraManager cameraManager, SurfaceTexture surface, int idVideo, int iDegree) {
        this.mCameraManager = cameraManager;
        Log.d("HJT", "setPreview2:" + idVideo);
        MyCameraUtil.idVideo = idVideo;
        MyCameraUtil.iDegree = iDegree;
        this.bShutDown = false;
        try {
            if (this.runnable_setPreviewSurfTexture != null) {
                this.runnable_setPreviewSurfTexture.stopRun();
            }
            this.runnable_setPreviewSurfTexture = new Runnable_setPreviewSurfTexture3(surface);
            this.runnable_setPreviewSurfTexture.run();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setPreview(CameraManager cameraManager, TextureView texture, int idVideo, int iDegree) {
        this.mCameraManager = cameraManager;
        Log.d("HJT", "setPreview2:" + idVideo);
        MyCameraUtil.idVideo = idVideo;
        MyCameraUtil.iDegree = iDegree;
        this.bShutDown = false;
        try {
            if (this.runnable_setPreviewSurfTexture != null) {
                this.runnable_setPreviewSurfTexture.stopRun();
            }
            this.runnable_setPreviewSurfTexture = new Runnable_setPreviewSurfTexture3(texture);
            this.runnable_setPreviewSurfTexture.run();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setPreview(CameraManager cameraManager, Surface surface, int idVideo, int iDegree) {
        this.mCameraManager = cameraManager;
        Log.d("HJT", "setPreview2:" + idVideo);
        MyCameraUtil.idVideo = idVideo;
        MyCameraUtil.iDegree = iDegree;
        this.bShutDown = false;
        try {
            if (this.runnable_setPreviewSurfTexture != null) {
                this.runnable_setPreviewSurfTexture.stopRun();
            }
            this.runnable_setPreviewSurfTexture = new Runnable_setPreviewSurfTexture3(surface);
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
