.class public final Landroid/media/tv/TvContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvContract$WatchedPrograms;,
        Landroid/media/tv/TvContract$WatchNextPrograms;,
        Landroid/media/tv/TvContract$PreviewPrograms;,
        Landroid/media/tv/TvContract$RecordedPrograms;,
        Landroid/media/tv/TvContract$Programs;,
        Landroid/media/tv/TvContract$Channels;,
        Landroid/media/tv/TvContract$PreviewProgramColumns;,
        Landroid/media/tv/TvContract$ProgramColumns;,
        Landroid/media/tv/TvContract$BaseTvColumns;
    }
.end annotation


# static fields
.field public static final ACTION_CHANNEL_BROWSABLE_REQUESTED:Ljava/lang/String; = "android.media.tv.action.CHANNEL_BROWSABLE_REQUESTED"

.field public static final ACTION_INITIALIZE_PROGRAMS:Ljava/lang/String; = "android.media.tv.action.INITIALIZE_PROGRAMS"

.field public static final ACTION_PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT:Ljava/lang/String; = "android.media.tv.action.PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT"

.field public static final ACTION_PREVIEW_PROGRAM_BROWSABLE_DISABLED:Ljava/lang/String; = "android.media.tv.action.PREVIEW_PROGRAM_BROWSABLE_DISABLED"

.field public static final ACTION_REQUEST_CHANNEL_BROWSABLE:Ljava/lang/String; = "android.media.tv.action.REQUEST_CHANNEL_BROWSABLE"

.field public static final ACTION_WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED:Ljava/lang/String; = "android.media.tv.action.WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED"

.field public static final AUTHORITY:Ljava/lang/String; = "android.media.tv"

.field public static final EXTRA_BLOCKED_PACKAGES:Ljava/lang/String; = "android.media.tv.extra.BLOCKED_PACKAGES"

.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.media.tv.extra.CHANNEL_ID"

.field public static final EXTRA_COLUMN_NAME:Ljava/lang/String; = "android.media.tv.extra.COLUMN_NAME"

.field public static final EXTRA_DATA_TYPE:Ljava/lang/String; = "android.media.tv.extra.DATA_TYPE"

.field public static final EXTRA_DEFAULT_VALUE:Ljava/lang/String; = "android.media.tv.extra.DEFAULT_VALUE"

.field public static final EXTRA_EXISTING_COLUMN_NAMES:Ljava/lang/String; = "android.media.tv.extra.EXISTING_COLUMN_NAMES"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.tv.extra.PACKAGE_NAME"

.field public static final EXTRA_PREVIEW_PROGRAM_ID:Ljava/lang/String; = "android.media.tv.extra.PREVIEW_PROGRAM_ID"

.field public static final EXTRA_RESULT_CODE:Ljava/lang/String; = "android.media.tv.extra.RESULT_CODE"

.field public static final EXTRA_WATCH_NEXT_PROGRAM_ID:Ljava/lang/String; = "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

.field public static final METHOD_ADD_COLUMN:Ljava/lang/String; = "add_column"

.field public static final METHOD_BLOCK_PACKAGE:Ljava/lang/String; = "block_package"

.field public static final METHOD_GET_BLOCKED_PACKAGES:Ljava/lang/String; = "get_blocked_packages"

.field public static final METHOD_GET_COLUMNS:Ljava/lang/String; = "get_columns"

.field public static final METHOD_UNBLOCK_PACKAGE:Ljava/lang/String; = "unblock_package"

.field public static final PARAM_BROWSABLE_ONLY:Ljava/lang/String; = "browsable_only"

.field public static final PARAM_CANONICAL_GENRE:Ljava/lang/String; = "canonical_genre"

.field public static final PARAM_CHANNEL:Ljava/lang/String; = "channel"

.field public static final PARAM_END_TIME:Ljava/lang/String; = "end_time"

.field public static final PARAM_INPUT:Ljava/lang/String; = "input"

.field public static final PARAM_PACKAGE:Ljava/lang/String; = "package"

.field public static final PARAM_PREVIEW:Ljava/lang/String; = "preview"

.field public static final PARAM_START_TIME:Ljava/lang/String; = "start_time"

.field private static final PATH_CHANNEL:Ljava/lang/String; = "channel"

.field private static final PATH_PASSTHROUGH:Ljava/lang/String; = "passthrough"

.field private static final PATH_PREVIEW_PROGRAM:Ljava/lang/String; = "preview_program"

.field private static final PATH_PROGRAM:Ljava/lang/String; = "program"

.field private static final PATH_RECORDED_PROGRAM:Ljava/lang/String; = "recorded_program"

.field private static final PATH_WATCH_NEXT_PROGRAM:Ljava/lang/String; = "watch_next_program"

.field public static final PERMISSION_READ_TV_LISTINGS:Ljava/lang/String; = "android.permission.READ_TV_LISTINGS"

.field public static final RESULT_ERROR_INVALID_ARGUMENT:I = 0x2

.field public static final RESULT_ERROR_IO:I = 0x1

.field public static final RESULT_OK:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildChannelLogoUri(J)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/media/tv/TvContract;->buildChannelLogoUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildChannelLogoUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "logo"

    .line 3
    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a channel: "

    .line 5
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->h(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildChannelUri(J)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "content"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "android.media.tv"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v1, "passthrough"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static buildChannelsUriForInput(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildChannelsUriForInput(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    .line 6
    invoke-static {p0, p2}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/media/tv/TvContract$Programs$Genres;->isCanonical(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p0, p2}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "canonical_genre"

    .line 9
    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a canonical genre: \'"

    const-string v0, "\'"

    .line 11
    invoke-static {p2, p1, v0}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static buildChannelsUriForInput(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2

    .line 2
    sget-object v0, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "input"

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const-string p0, "browsable_only"

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildInputId(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildPreviewProgramUri(J)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/media/tv/TvContract$PreviewPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildPreviewProgramsUriForChannel(J)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Landroid/media/tv/TvContract$PreviewPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "channel"

    .line 2
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildPreviewProgramsUriForChannel(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 3
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/media/tv/TvContract;->buildPreviewProgramsUriForChannel(J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a channel: "

    .line 6
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->h(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildProgramUri(J)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/media/tv/TvContract$Programs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildProgramsUriForChannel(J)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Landroid/media/tv/TvContract$Programs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "channel"

    .line 2
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildProgramsUriForChannel(JJJ)Landroid/net/Uri;
    .locals 0

    .line 12
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(J)Landroid/net/Uri;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string/jumbo p1, "start_time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "end_time"

    .line 14
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildProgramsUriForChannel(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 3
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a channel: "

    .line 6
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->h(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildProgramsUriForChannel(Landroid/net/Uri;JJ)Landroid/net/Uri;
    .locals 7

    .line 15
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(JJJ)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a channel: "

    .line 18
    invoke-static {p2, p0}, Landroid/accessibilityservice/c;->h(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static buildRecordedProgramUri(J)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/media/tv/TvContract$RecordedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildWatchNextProgramUri(J)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/media/tv/TvContract$WatchNextPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildWatchedProgramUri(J)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static isChannelUri(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isChannelUriForPassthroughInput(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "passthrough"

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isChannelUriForTunerInput(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "channel"

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isProgramUri(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "program"

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRecordedProgramUri(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0}, Landroid/media/tv/TvContract;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "recorded_program"

    invoke-static {p0, v0}, Landroid/media/tv/TvContract;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTvUri(Landroid/net/Uri;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "content"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "android.media.tv"

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method private static isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    :cond_0
    return v2
.end method

.method public static requestChannelBrowsable(Landroid/content/Context;J)V
    .locals 1

    .line 1
    const-string/jumbo v0, "tv_input"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/media/tv/TvInputManager;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/media/tv/TvContract;->buildChannelUri(J)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputManager;->requestChannelBrowsable(Landroid/net/Uri;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
