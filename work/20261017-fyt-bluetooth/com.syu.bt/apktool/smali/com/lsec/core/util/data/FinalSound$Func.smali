.class public Lcom/lsec/core/util/data/FinalSound$Func;
.super Ljava/lang/Object;
.source "FinalSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/util/data/FinalSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Func"
.end annotation


# static fields
.field public static final ALL:I = 0x0

.field public static final BASS:I = 0x4

.field public static final EQ:I = 0x1

.field public static final FIELD:I = 0x2

.field public static final HIGHPITCH:I = 0x5

.field public static final SURROUND:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/lsec/core/util/data/FinalSound;


# direct methods
.method public constructor <init>(Lcom/lsec/core/util/data/FinalSound;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lsec/core/util/data/FinalSound$Func;->this$0:Lcom/lsec/core/util/data/FinalSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
