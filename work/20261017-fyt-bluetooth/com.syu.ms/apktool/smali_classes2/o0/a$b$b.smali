.class public Lo0/a$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo0/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo0/a$b;


# direct methods
.method public constructor <init>(Lo0/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/a$b$b;->a:Lo0/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo0/a$b$b;->a:Lo0/a$b;

    invoke-static {v0}, Lo0/a$b;->a(Lo0/a$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x14

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 2
    invoke-static {v0, v2}, Lo0/g;->T(I[I)V

    :cond_0
    return-void
.end method
