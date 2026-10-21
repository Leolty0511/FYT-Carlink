.class final Landroid/app/ActivityThread$DumpComponentInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpComponentInfo"
.end annotation


# instance fields
.field public args:[Ljava/lang/String;

.field public fd:Landroid/os/ParcelFileDescriptor;

.field public prefix:Ljava/lang/String;

.field public token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
