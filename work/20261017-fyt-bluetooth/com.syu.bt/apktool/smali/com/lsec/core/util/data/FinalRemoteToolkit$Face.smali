.class public Lcom/lsec/core/util/data/FinalRemoteToolkit$Face;
.super Ljava/lang/Object;
.source "FinalRemoteToolkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/util/data/FinalRemoteToolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Face"
.end annotation


# static fields
.field public static final ALL:I = 0x40000000

.field public static final FRONT:I = 0x10000

.field public static final LEFT:I = 0x1000

.field public static final REAR:I = 0x20000

.field public static final RIGHT:I = 0x2000


# instance fields
.field final synthetic this$0:Lcom/lsec/core/util/data/FinalRemoteToolkit;


# direct methods
.method public constructor <init>(Lcom/lsec/core/util/data/FinalRemoteToolkit;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lsec/core/util/data/FinalRemoteToolkit$Face;->this$0:Lcom/lsec/core/util/data/FinalRemoteToolkit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
