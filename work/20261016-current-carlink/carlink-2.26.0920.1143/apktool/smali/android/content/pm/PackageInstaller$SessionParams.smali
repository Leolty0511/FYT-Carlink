.class public Landroid/content/pm/PackageInstaller$SessionParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionParams"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$SessionParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_FULL_INSTALL:I = 0x1

.field public static final MODE_INHERIT_EXISTING:I = 0x2

.field public static final MODE_INVALID:I = -0x1

.field public static final UID_UNKNOWN:I = -0x1


# instance fields
.field public abiOverride:Ljava/lang/String;

.field public appIcon:Landroid/graphics/Bitmap;

.field public appIconLastModified:J

.field public appLabel:Ljava/lang/String;

.field public appPackageName:Ljava/lang/String;

.field public grantedRuntimePermissions:[Ljava/lang/String;

.field public installFlags:I

.field public installLocation:I

.field public installReason:I

.field public mode:I

.field public originatingUid:I

.field public originatingUri:Landroid/net/Uri;

.field public referrerUri:Landroid/net/Uri;

.field public sizeBytes:J

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 5
    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 7
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v1, 0x1

    .line 10
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const-wide/16 v1, -0x1

    .line 12
    iput-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 13
    iput-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 14
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public areHiddenOptionsSet()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, 0x1d880

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "mode"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "installFlags"

    .line 14
    .line 15
    .line 16
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string/jumbo v1, "installLocation"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string/jumbo v1, "sizeBytes"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "appPackageName"

    .line 46
    .line 47
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "appIcon"

    .line 64
    .line 65
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "appLabel"

    .line 69
    .line 70
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const-string/jumbo v0, "originatingUri"

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string/jumbo v1, "originatingUid"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v0, "referrerUri"

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 99
    .line 100
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    const-string v0, "abiOverride"

    .line 104
    .line 105
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v0, "volumeUuid"

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    const-string/jumbo v0, "grantedRuntimePermissions"

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public setAllocateAggressive(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 4
    .line 5
    const v0, 0x8000

    .line 6
    .line 7
    .line 8
    or-int/2addr p1, v0

    .line 9
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 13
    .line 14
    const v0, -0x8001

    .line 15
    .line 16
    .line 17
    and-int/2addr p1, v0

    .line 18
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public setAllowDowngrade(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 4
    .line 5
    or-int/lit16 p1, p1, 0x80

    .line 6
    .line 7
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 11
    .line 12
    and-int/lit16 p1, p1, -0x81

    .line 13
    .line 14
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setAppIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setAppLabel(Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    return-void
.end method

.method public setDontKillApp(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 4
    .line 5
    or-int/lit16 p1, p1, 0x1000

    .line 6
    .line 7
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 11
    .line 12
    and-int/lit16 p1, p1, -0x1001

    .line 13
    .line 14
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setGrantedRuntimePermissions([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 6
    .line 7
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public setInstallAsInstantApp(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 4
    .line 5
    or-int/lit16 p1, p1, 0x800

    .line 6
    .line 7
    and-int/lit16 p1, p1, -0x4001

    .line 8
    .line 9
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 13
    .line 14
    and-int/lit16 p1, p1, -0x801

    .line 15
    .line 16
    or-int/lit16 p1, p1, 0x4000

    .line 17
    .line 18
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public setInstallAsVirtualPreload()V
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return-void
.end method

.method public setInstallFlagsExternal()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    and-int/lit8 v0, v0, -0x11

    .line 6
    .line 7
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 8
    .line 9
    return-void
.end method

.method public setInstallFlagsForcePermissionPrompt()V
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return-void
.end method

.method public setInstallFlagsInternal()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    and-int/lit8 v0, v0, -0x9

    .line 6
    .line 7
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 8
    .line 9
    return-void
.end method

.method public setInstallLocation(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    return-void
.end method

.method public setInstallReason(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    return-void
.end method

.method public setOriginatingUid(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    return-void
.end method

.method public setOriginatingUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    return-void
.end method

.method public setReferrerUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 42
    .line 43
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 52
    .line 53
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
