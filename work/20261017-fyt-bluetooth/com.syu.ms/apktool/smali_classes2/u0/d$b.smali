.class public Lu0/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/d;->A0(I)V
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
    .locals 2

    .line 1
    sget-object v0, Le1/a;->b:Le1/l;

    instance-of v1, v0, Le1/c;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Le1/c;

    invoke-virtual {v0}, Le1/c;->m()V

    :cond_0
    return-void
.end method
