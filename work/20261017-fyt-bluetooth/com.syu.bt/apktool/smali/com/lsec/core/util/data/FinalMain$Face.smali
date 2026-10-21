.class public Lcom/lsec/core/util/data/FinalMain$Face;
.super Ljava/lang/Object;
.source "FinalMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/util/data/FinalMain;
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
.field final synthetic this$0:Lcom/lsec/core/util/data/FinalMain;


# direct methods
.method public constructor <init>(Lcom/lsec/core/util/data/FinalMain;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/lsec/core/util/data/FinalMain$Face;->this$0:Lcom/lsec/core/util/data/FinalMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
