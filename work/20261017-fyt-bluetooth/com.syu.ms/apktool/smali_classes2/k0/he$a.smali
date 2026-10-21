.class public Lk0/he$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/he;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/he;


# direct methods
.method public constructor <init>(Lk0/he;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/he$a;->a:Lk0/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/he$a;->a:Lk0/he;

    invoke-virtual {v0}, Lk0/lt;->V2()V

    return-void
.end method
