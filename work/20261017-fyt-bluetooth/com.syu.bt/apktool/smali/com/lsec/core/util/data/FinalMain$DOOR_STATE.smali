.class public Lcom/lsec/core/util/data/FinalMain$DOOR_STATE;
.super Ljava/lang/Object;
.source "FinalMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/util/data/FinalMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DOOR_STATE"
.end annotation


# static fields
.field public static final DOOR_BACK:I = 0x1

.field public static final DOOR_ENGINE:I = 0x0

.field public static final DOOR_FL:I = 0x2

.field public static final DOOR_FR:I = 0x3

.field public static final DOOR_RL:I = 0x4

.field public static final DOOR_RR:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/lsec/core/util/data/FinalMain;


# direct methods
.method public constructor <init>(Lcom/lsec/core/util/data/FinalMain;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/lsec/core/util/data/FinalMain$DOOR_STATE;->this$0:Lcom/lsec/core/util/data/FinalMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
