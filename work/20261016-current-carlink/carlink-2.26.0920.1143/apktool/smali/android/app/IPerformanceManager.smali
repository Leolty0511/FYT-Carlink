.class public interface abstract Landroid/app/IPerformanceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final ENALBE_BOOSTKILL:I = 0x2

.field public static final PROCESS_RECLAIM_ENABLED:I = 0x3

.field public static final READ_PROC_FILE:I = 0x4

.field public static final RECLAIM_PROCESS:I = 0x1

.field public static final WRITE_PROC_FILE:I = 0x5

.field public static final descriptor:Ljava/lang/String; = "com.android.server.performance"


# virtual methods
.method public abstract enableBoostKill(I)V
.end method

.method public abstract readProcFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract reclaimProcess(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract reclaimProcessEnabled()Z
.end method

.method public abstract writeProcFile(Ljava/lang/String;Ljava/lang/String;)V
.end method
