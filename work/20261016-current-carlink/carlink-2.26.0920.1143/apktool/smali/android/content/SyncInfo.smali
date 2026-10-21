.class public Landroid/content/SyncInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final REDACTED_ACCOUNT:Landroid/accounts/Account;


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final authority:Ljava/lang/String;

.field public final authorityId:I

.field public final startTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/accounts/Account;

    .line 2
    .line 3
    const-string v1, "*****"

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/content/SyncInfo;->REDACTED_ACCOUNT:Landroid/accounts/Account;

    .line 9
    .line 10
    new-instance v0, Landroid/content/SyncInfo$1;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/SyncInfo$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/content/SyncInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/content/SyncInfo;->authorityId:I

    .line 3
    iput-object p2, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 4
    iput-object p3, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Landroid/content/SyncInfo;->startTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/SyncInfo;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Landroid/content/SyncInfo;->authorityId:I

    iput v0, p0, Landroid/content/SyncInfo;->authorityId:I

    .line 8
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 9
    iget-object v0, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 10
    iget-wide v0, p1, Landroid/content/SyncInfo;->startTime:J

    iput-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncInfo;->authorityId:I

    .line 13
    const-class v0, Landroid/accounts/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    return-void
.end method

.method public static createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;
    .locals 7

    new-instance v6, Landroid/content/SyncInfo;

    sget-object v2, Landroid/content/SyncInfo;->REDACTED_ACCOUNT:Landroid/accounts/Account;

    move-object v0, v6

    move v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    return-object v6
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/SyncInfo;->authorityId:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
