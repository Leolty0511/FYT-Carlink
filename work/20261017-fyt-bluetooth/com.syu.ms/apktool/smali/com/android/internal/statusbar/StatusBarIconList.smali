.class public Lcom/android/internal/statusbar/StatusBarIconList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Lcom/android/internal/statusbar/StatusBarIcon;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIconList$a;

    invoke-direct {v0}, Lcom/android/internal/statusbar/StatusBarIconList$a;-><init>()V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIconList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->a(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->a:[Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarIconList;->b:[Lcom/android/internal/statusbar/StatusBarIcon;

    goto :goto_1

    .line 4
    :cond_0
    new-array v1, v0, [Lcom/android/internal/statusbar/StatusBarIcon;

    iput-object v1, p0, Lcom/android/internal/statusbar/StatusBarIconList;->b:[Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->b:[Lcom/android/internal/statusbar/StatusBarIcon;

    new-instance v3, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {v3, p1}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->a:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->b:[Lcom/android/internal/statusbar/StatusBarIcon;

    if-nez v0, :cond_0

    const/4 p2, -0x1

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 4
    :cond_0
    array-length v0, v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    iget-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->b:[Lcom/android/internal/statusbar/StatusBarIcon;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 8
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {v3, p1, p2}, Lcom/android/internal/statusbar/StatusBarIcon;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
