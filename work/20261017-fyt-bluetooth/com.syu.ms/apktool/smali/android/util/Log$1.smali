.class final Landroid/util/Log$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/Log$TerribleFailureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/internal/os/RuntimeInit;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
