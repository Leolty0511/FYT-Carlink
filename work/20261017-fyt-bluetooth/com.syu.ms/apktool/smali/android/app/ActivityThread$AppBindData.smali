.class final Landroid/app/ActivityThread$AppBindData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppBindData"
.end annotation


# instance fields
.field public appInfo:Landroid/content/pm/ApplicationInfo;

.field public compatInfo:Landroid/content/res/CompatibilityInfo;

.field public config:Landroid/content/res/Configuration;

.field public debugMode:I

.field public enableOpenGlTrace:Z

.field public info:Landroid/app/LoadedApk;

.field public initAutoStopProfiler:Z

.field public initProfileFd:Landroid/os/ParcelFileDescriptor;

.field public initProfileFile:Ljava/lang/String;

.field public instrumentationArgs:Landroid/os/Bundle;

.field public instrumentationName:Landroid/content/ComponentName;

.field public instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field public instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

.field public persistent:Z

.field public processName:Ljava/lang/String;

.field public providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public restrictedBackupMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppBindData{appInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
