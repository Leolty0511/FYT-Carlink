.class public Landroid/media/ExternalRingtonesCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroid/media/ExternalRingtonesCursorWrapper;->mUserId:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget v0, p0, Landroid/media/ExternalRingtonesCursorWrapper;->mUserId:I

    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    return-object v0
.end method
