.class public Lu0/d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/d;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->u()I

    const-string v0, "com.syu.screen.cali"

    .line 2
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    const-string v0, "\u8df3\u5230\u6821\u51c6\u754c\u9762 "

    .line 3
    invoke-static {v0}, Lo1/b0;->f(Ljava/lang/String;)V

    return-void
.end method
