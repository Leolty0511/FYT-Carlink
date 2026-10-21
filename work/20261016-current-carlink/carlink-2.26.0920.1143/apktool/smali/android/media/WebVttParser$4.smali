.class Landroid/media/WebVttParser$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method public constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0

    iput-object p1, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "NOTE"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, "NOTE "

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/media/WebVttParser;->access$1000(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    .line 34
    .line 35
    new-instance v1, Landroid/media/TextTrackCue;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/media/TextTrackCue;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$902(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/media/WebVttParser;->access$1100(Landroid/media/WebVttParser;)Ljava/util/Vector;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    .line 53
    .line 54
    invoke-static {v0}, Landroid/media/WebVttParser;->access$700(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 59
    .line 60
    .line 61
    const-string v0, "-->"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    .line 70
    .line 71
    invoke-static {v0}, Landroid/media/WebVttParser;->access$100(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    .line 80
    .line 81
    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object p1, v0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 86
    .line 87
    :goto_0
    return-void
.end method
