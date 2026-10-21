.class public Le1/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/q;


# direct methods
.method public constructor <init>(Le1/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/q$d;->a:Le1/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le1/q$d;->a:Le1/q;

    invoke-static {}, Le1/q;->n()I

    move-result v1

    invoke-static {v0, v1}, Le1/q;->o(Le1/q;I)V

    return-void
.end method
