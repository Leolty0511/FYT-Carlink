.class public final synthetic Ly0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmodule/sound/AudioDevice$k;


# direct methods
.method public synthetic constructor <init>(Lmodule/sound/AudioDevice$k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/a;->a:Lmodule/sound/AudioDevice$k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ly0/a;->a:Lmodule/sound/AudioDevice$k;

    invoke-static {v0}, Lmodule/sound/AudioDevice$k;->a(Lmodule/sound/AudioDevice$k;)V

    return-void
.end method
