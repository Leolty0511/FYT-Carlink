.class public Lo1/m;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static final a:Lo1/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo1/m;

    invoke-direct {v0}, Lo1/m;-><init>()V

    sput-object v0, Lo1/m;->a:Lo1/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static a()Lo1/m;
    .locals 1

    .line 1
    sget-object v0, Lo1/m;->a:Lo1/m;

    return-object v0
.end method
