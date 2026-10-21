.class public Le1/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le1/f;->w(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/f;


# direct methods
.method public constructor <init>(Le1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/f$b;->a:Le1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "V2854"

    const-string v1, " ========>>  flushParams  success!! "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Le1/f$b;->a:Le1/f;

    iget-boolean v0, v0, Le1/c;->i:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x89

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 3
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    :cond_0
    return-void
.end method
