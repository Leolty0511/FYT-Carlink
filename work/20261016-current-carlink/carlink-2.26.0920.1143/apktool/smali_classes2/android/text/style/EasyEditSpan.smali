.class public Landroid/text/style/EasyEditSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final EXTRA_TEXT_CHANGED_TYPE:Ljava/lang/String; = "android.text.style.EXTRA_TEXT_CHANGED_TYPE"

.field public static final TEXT_DELETED:I = 0x1

.field public static final TEXT_MODIFIED:I = 0x2


# instance fields
.field private mDeleteEnabled:Z

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/EasyEditSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public isDeleteEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    return v0
.end method

.method public setDeleteEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/EasyEditSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    .line 6
    .line 7
    iget-boolean p2, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    .line 8
    .line 9
    int-to-byte p2, p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
