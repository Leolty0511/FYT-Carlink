.class public Lc/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c;->b(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c;


# direct methods
.method public constructor <init>(Lc/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c$i;->a:Lc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c$i;->a:Lc/c;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lc/c;->b(I)Z

    return-void
.end method
