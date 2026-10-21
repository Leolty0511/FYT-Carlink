.class public Lcom/syu/ipc/ModuleObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/syu/ipc/ModuleObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/syu/ipc/ModuleObject$1;

    invoke-direct {v0}, Lcom/syu/ipc/ModuleObject$1;-><init>()V

    sput-object v0, Lcom/syu/ipc/ModuleObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 3
    iput-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 5
    iput-object v1, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    .line 6
    iput-object p1, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/syu/ipc/ModuleObject;->flts:[F

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/syu/ipc/ModuleObject$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/syu/ipc/ModuleObject;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 10
    iput-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/syu/ipc/ModuleObject;->flts:[F

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
