.class public La/b$i;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "property/no_move_top_app.txt"

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/16 v3, 0x40

    .line 1
    invoke-static {v0, v1, v2, v3}, La/b;->b(Ljava/lang/String;III)V

    return-void
.end method
