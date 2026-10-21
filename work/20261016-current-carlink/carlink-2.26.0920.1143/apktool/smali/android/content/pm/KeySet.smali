.class public Landroid/content/pm/KeySet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/KeySet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private token:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/KeySet$1;

    invoke-direct {v0}, Landroid/content/pm/KeySet$1;-><init>()V

    sput-object v0, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string/jumbo v0, "null value for KeySet IBinder token"

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public static synthetic access$000(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .locals 0

    invoke-static {p0}, Landroid/content/pm/KeySet;->readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;

    move-result-object p0

    return-object p0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroid/content/pm/KeySet;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/content/pm/KeySet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/content/pm/KeySet;

    .line 7
    .line 8
    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    .line 9
    .line 10
    iget-object p1, p1, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    .line 11
    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
