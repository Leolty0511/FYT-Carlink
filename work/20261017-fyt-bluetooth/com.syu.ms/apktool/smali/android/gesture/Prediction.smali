.class public Landroid/gesture/Prediction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final name:Ljava/lang/String;

.field public score:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Landroid/gesture/Prediction;->score:D

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    return-object v0
.end method
