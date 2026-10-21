.class final Landroid/app/assist/AssistStructure$ParcelTransferReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ParcelTransferReader"
.end annotation


# instance fields
.field private final mChannel:Landroid/os/IBinder;

.field private mCurParcel:Landroid/os/Parcel;

.field mNumReadViews:I

.field mNumReadWindows:I

.field mStringReader:Landroid/os/PooledStringReader;

.field final mTmpMatrix:[F

.field private mTransferToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/app/assist/AssistStructure;


# direct methods
.method public constructor <init>(Landroid/app/assist/AssistStructure;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x9

    .line 7
    .line 8
    new-array p1, p1, [F

    .line 9
    .line 10
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mChannel:Landroid/os/IBinder;

    .line 13
    .line 14
    return-void
.end method

.method private fetchData()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.app.AssistStructure"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTransferToken:Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 27
    .line 28
    :try_start_0
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mChannel:Landroid/os/IBinder;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x2

    .line 32
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 36
    .line 37
    .line 38
    iput v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    .line 39
    .line 40
    iput v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v1, "AssistStructure"

    .line 45
    .line 46
    const-string v2, "Failure reading AssistStructure data"

    .line 47
    .line 48
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "Failure reading AssistStructure data: "

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v1
.end method


# virtual methods
.method public go()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->fetchData()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    .line 13
    .line 14
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v0, v1}, Landroid/app/assist/AssistStructure;->access$002(Landroid/app/assist/AssistStructure;I)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    .line 26
    .line 27
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-static {v0, v1, v2}, Landroid/app/assist/AssistStructure;->access$102(Landroid/app/assist/AssistStructure;J)J

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    .line 37
    .line 38
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-static {v0, v1, v2}, Landroid/app/assist/AssistStructure;->access$202(Landroid/app/assist/AssistStructure;J)J

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-lez v0, :cond_0

    .line 54
    .line 55
    new-instance v1, Landroid/os/PooledStringReader;

    .line 56
    .line 57
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 58
    .line 59
    invoke-direct {v1, v2}, Landroid/os/PooledStringReader;-><init>(Landroid/os/Parcel;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    :goto_0
    if-ge v1, v0, :cond_0

    .line 66
    .line 67
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    .line 68
    .line 69
    iget-object v2, v2, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    .line 70
    .line 71
    new-instance v3, Landroid/app/assist/AssistStructure$WindowNode;

    .line 72
    .line 73
    invoke-direct {v3, p0}, Landroid/app/assist/AssistStructure$WindowNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public readParcel(II)Landroid/os/Parcel;
    .locals 3

    .line 1
    iget-object p2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Landroid/os/BadParcelableException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Got token "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p2, ", expected token "

    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    iget-object p1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTransferToken:Landroid/os/IBinder;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->fetchData()V

    .line 61
    .line 62
    .line 63
    new-instance p1, Landroid/os/PooledStringReader;

    .line 64
    .line 65
    iget-object p2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 66
    .line 67
    invoke-direct {p1, p2}, Landroid/os/PooledStringReader;-><init>(Landroid/os/Parcel;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    .line 71
    .line 72
    iget-object p1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string p2, "Reached end of partial data without transfer token"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method
