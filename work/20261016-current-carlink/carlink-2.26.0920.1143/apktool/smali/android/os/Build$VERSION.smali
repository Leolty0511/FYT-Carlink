.class public Landroid/os/Build$VERSION;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VERSION"
.end annotation


# static fields
.field public static final ACTIVE_CODENAMES:[Ljava/lang/String;

.field private static final ALL_CODENAMES:[Ljava/lang/String;

.field public static final BASE_OS:Ljava/lang/String;

.field public static final CODENAME:Ljava/lang/String;

.field public static final INCREMENTAL:Ljava/lang/String;

.field public static final PREVIEW_SDK_INT:I

.field public static final RELEASE:Ljava/lang/String;

.field public static final RESOURCES_SDK_INT:I

.field public static final SDK:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SDK_INT:I

.field public static final SECURITY_PATCH:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-string/jumbo v0, "ro.build.version.incremental"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v0, "ro.build.version.release"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 18
    .line 19
    const-string/jumbo v0, "ro.build.version.base_os"

    .line 20
    .line 21
    .line 22
    const-string v1, ""

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    .line 29
    .line 30
    const-string/jumbo v0, "ro.build.version.security_patch"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 38
    .line 39
    const-string/jumbo v0, "ro.build.version.sdk"

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sput-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    sput v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const-string/jumbo v2, "ro.build.version.preview_sdk"

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    sput v2, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    .line 63
    .line 64
    const-string/jumbo v2, "ro.build.version.codename"

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    sput-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 72
    .line 73
    const-string/jumbo v2, "ro.build.version.all_codenames"

    .line 74
    .line 75
    .line 76
    const-string v3, ","

    .line 77
    .line 78
    invoke-static {v2, v3}, Landroid/os/Build;->access$100(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    sput-object v2, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    .line 83
    .line 84
    const-string v3, "REL"

    .line 85
    .line 86
    aget-object v4, v2, v1

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_0

    .line 93
    .line 94
    new-array v2, v1, [Ljava/lang/String;

    .line 95
    .line 96
    :cond_0
    sput-object v2, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    .line 97
    .line 98
    array-length v1, v2

    .line 99
    add-int/2addr v0, v1

    .line 100
    sput v0, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 101
    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
